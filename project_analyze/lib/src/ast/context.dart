import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/source/source.dart';
import 'package:path/path.dart' as path;
import 'package:project_analyze/src/extensions/extensions.dart';

import '../utils/json_utils.dart';
import 'analyzer.dart';

class AnalyzerContext {
  final typeRef = <int, DartTypeSerializer>{};
  final elementRef = <int, InterfaceElementSerializer>{};
  final typeAliasRef = <int, TypeAliasElementSerializer>{};

  final String projectPath;
  final String projectName;
  final String sdkPath;
  String _currentFilePath = '';

  AnalyzerContext({required this.projectPath, required this.projectName, required String sdkPath})
    : sdkPath = path.relative(sdkPath, from: projectPath);

  String get currentFilePath =>
      _currentFilePath.isEmpty ? throw ArgumentError('currentFilePath cannot be empty') : _currentFilePath;

  set currentFilePath(String value) {
    if (value.isEmpty) {
      throw ArgumentError('currentFilePath cannot be empty');
    }
    _currentFilePath = value;
  }

  String? getPath(Source? source) {
    if (source == null) return null;
    return path.toUri(path.relative(source.fullName, from: projectPath)).path;
  }

  InterfaceElementRefSerializer getElementRef(InterfaceElement element) {
    final ref = element.hashCode;
    var jsonType = RefJsonType.element;
    String? source;
    // if in project => hashCode
    // if in library => cache and return hashCode
    if (element.source.uri.scheme == 'package' && path.split(element.source.uri.path).first == projectName) {
      jsonType = RefJsonType.internalElement;
      source = getPath(element.source);
    } else {
      if (!elementRef.containsKey(ref)) {
        // Create a placeholder serializer first
        final placeholder = InterfaceElementSerializer.placeholder();
        elementRef[ref] = placeholder;
        final fullSerializer = InterfaceElementSerializer.from(element, this);
        elementRef[ref] = fullSerializer;
      }
    }
    return InterfaceElementRefSerializer(ref: '#$ref', jsonType: jsonType, name: element.name, path: source);
  }

  ReferenceableSerializer getTypeRef(DartType type) {
    if (type.getDisplayString(withNullability: false).startsWith('void Function(')) {
      print('${type.getDisplayString(withNullability: false)}: ${type.hashCode}');
    }
    final ref = type.hashCode;
    final key = '#$ref';
    if (!typeRef.containsKey(ref)) {
      // Create a placeholder serializer first
      final placeholder = DartTypeSerializer.placeholder();

      // Add the placeholder to cache immediately
      typeRef[ref] = placeholder;

      // Now create the full serializer - any recursive calls will find the placeholder
      final fullSerializer = DartTypeSerializer.from(type, this);

      // Update the cache with the complete serializer
      typeRef[ref] = fullSerializer;
    }
    return switch (type) {
      FunctionType() => FunctionTypeRefSerializer(
        ref: key,
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      ),
      InterfaceType() => InterfaceTypeRefSerializer(
        ref: key,
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
        typeArguments: type.typeArguments.map((e) => getTypeRef(e) as DartTypeRefSerializer).toList(),
      ),
      _ => DartTypeRefSerializer(
        alias: type.alias != null ? InstantiatedTypeAliasElementSerializer.from(type.alias!, this) : null,
        ref: key,
        // ignore: deprecated_member_use
        name: type.getDisplayString(withNullability: false),
        isDartCore: type.isDartCore,
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
      ),
    };
  }

  TypeAliasElementRefSerializer getTypeAliasRef(TypeAliasElement element) {
    final ref = element.hashCode;
    String? source;
    if (!typeAliasRef.containsKey(ref)) {
      final fullSerializer = TypeAliasElementSerializer.from(element, this);
      typeAliasRef[ref] = fullSerializer;
      source = getPath(element.source);
    }
    return TypeAliasElementRefSerializer(
      ref: '#$ref',
      jsonType: RefJsonType.alias,
      name: element.name,
      path: source,
      typeParameters: element.typeParameters.map((e) => TypeParameterElementSerializer.from(e, this)).toList(),
    );
  }
}
