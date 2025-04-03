part of 'analyzer.dart';

class AnalyzerContext {
  static final _elementRef = <int>{};

  final String projectPath;
  final String currentFilePath;
  final String projectName;

  AnalyzerContext({
    required this.projectPath,
    required this.currentFilePath,
    required this.projectName,
  });

  AnalyzerContext copyWith({String? projectPath, String? currentFilePath, String? projectName}) {
    return AnalyzerContext(
      projectPath: projectPath ?? this.projectPath,
      currentFilePath: currentFilePath ?? this.currentFilePath,
      projectName: projectName ?? this.projectName,
    );
  }

  String getElementRef(InterfaceElement element) {
    if (!_elementRef.contains(element.hashCode)) {
      _elementRef.add(element.hashCode);
      return '${element.hashCode}';
    }
    return '#${element.hashCode}';
  }

  // String? getTypeRef(DartType type) {
  //   if (type.element case var element? when element is InterfaceElement) {
  //     return getElementRef(element);
  //   }
  //   return null;
  // }
}
