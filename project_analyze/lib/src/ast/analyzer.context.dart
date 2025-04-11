part of 'analyzer.dart';

class AnalyzerContext {
  final typeRef = <int, DartTypeSerializer>{};
  final elementRef = <int, InterfaceElementSerializer>{};

  final String projectPath;
  final String projectName;
  String _currentFilePath = '';

  AnalyzerContext({required this.projectPath, required this.projectName});

  String get currentFilePath => _currentFilePath.isEmpty ? throw ArgumentError('currentFilePath cannot be empty') : _currentFilePath;

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
    // if in project => hashCode
    // if in library => cache and return hashCode
    if (element.source.uri.scheme == 'package' && path.split(element.source.uri.path).first == projectName) {
      return InterfaceElementRefSerializer(
        ref: '#$ref',
        jsonType: refJsonInternalElement,
        source: getPath(element.source)!,
        name: element.name,
        interfaces: [],
        mixins: [],
        supertype: null,
        allSupertypes: [],
      );
    } else {
      // Create a placeholder serializer first
      final placeholder = InterfaceElementSerializer(
        source: getPath(element.source)!,
        name: element.name,
        isPrivate: element.isPrivate,
        isPublic: element.isPublic,
        fields: [],
        methods: [],
        typeParameters: [],
        isSimplyBounded: false,
        constructors: [],
        interfaces: [],
        mixins: [],
        supertype: null,
        allSupertypes: [],
      );

      // Add the placeholder to cache immediately
      elementRef[ref] = placeholder;

      // Now create the full serializer - any recursive calls will find the placeholder
      final fullSerializer = InterfaceElementSerializer.from(element, this);

      // Update the cache with the complete serializer
      elementRef[ref] = fullSerializer;

      return InterfaceElementRefSerializer(
        ref: '#$ref',
        jsonType: refJsonElement,
        source: getPath(element.source)!,
        name: element.name,
        interfaces: [],
        mixins: [],
        supertype: null,
        allSupertypes: [],
      );
    }
  }

  DartTypeRefSerializer getTypeRef(DartType type) {
    final ref = type.hashCode;
    if (!typeRef.containsKey(ref)) {
      // Create a placeholder serializer first
      final placeholder = DartTypeSerializer(
        // ignore: deprecated_member_use
        name: type.getDisplayString(withNullability: false),
        source: null,
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
        isDartCore: type.isDartCore,
        isDartAsync: type.isDartAsync,
        jsonType: _placeholderJsonType,
      );

      // Add the placeholder to cache immediately
      typeRef[ref] = placeholder;

      // Now create the full serializer - any recursive calls will find the placeholder
      final fullSerializer = DartTypeSerializer.from(type, this);

      // Update the cache with the complete serializer
      typeRef[ref] = fullSerializer;
    }
    final refStr = '#$ref';
    return DartTypeRefSerializer(ref: refStr, jsonType: refJsonType, nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix));
  }

  InterfaceTypeRefSerializer getInterfaceTypeRef(InterfaceType type) {
    final ref = type.hashCode;
    if (!typeRef.containsKey(ref)) {
      // Create a placeholder serializer first
      final placeholder = InterfaceTypeSerializer(
        name: '',
        source: null,
        typeArguments: [],
        element: InterfaceElementRefSerializer(
          ref: '',
          jsonType: refJsonElement,
          source: '',
          name: '',
          interfaces: [],
          mixins: [],
          supertype: null,
          allSupertypes: [],
        ),
        nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix),
        isDartCore: type.isDartCore,
        isDartAsync: type.isDartAsync,
        jsonType: _placeholderJsonType,
      );

      // Add the placeholder to cache immediately
      typeRef[ref] = placeholder;

      // Now create the full serializer - any recursive calls will find the placeholder
      final fullSerializer = InterfaceTypeSerializer.from(type, this);

      // Update the cache with the complete serializer
      typeRef[ref] = fullSerializer;
    }
    final refStr = '#$ref';
    return InterfaceTypeRefSerializer(ref: refStr, jsonType: refJsonType, nullabilitySuffix: nullabilitySuffixToString(type.nullabilitySuffix));
  }
}
