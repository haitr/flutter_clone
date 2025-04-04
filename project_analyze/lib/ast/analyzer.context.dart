part of 'analyzer.dart';

class AnalyzerContext {
  static final _typeRef = <int, DartTypeSerializer>{};

  final String projectPath;
  final String currentFilePath;
  final String projectName;

  AnalyzerContext({
    required this.projectPath,
    required this.currentFilePath,
    required this.projectName,
  });

  AnalyzerContext copyWith({String? projectPath, String? currentFilePath, String? projectName}) =>
      AnalyzerContext(
        projectPath: projectPath ?? this.projectPath,
        currentFilePath: currentFilePath ?? this.currentFilePath,
        projectName: projectName ?? this.projectName,
      );

  String getElementRef(InterfaceElement element) => '#${element.hashCode}';

  DartTypeRefSerializer getTypeRef(DartType type) {
    final ref = type.hashCode;
    if (!_typeRef.containsKey(ref)) {
      // Create a placeholder serializer first
      final placeholder = DartTypeSerializer(
        name: type.getDisplayString(withNullability: false),
        nullabilitySuffix: type.nullabilitySuffix,
        isDartCore: type.isDartCore,
        isDartAsync: type.isDartAsync,
        jsonType: '__placeholder__',
      );

      // Add the placeholder to cache immediately
      _typeRef[ref] = placeholder;

      // Now create the full serializer - any recursive calls will find the placeholder
      final fullSerializer = DartTypeSerializer.from(type, this);

      // Update the cache with the complete serializer
      _typeRef[ref] = fullSerializer;
    }
    return DartTypeRefSerializer(ref: '#$ref');
  }
}
