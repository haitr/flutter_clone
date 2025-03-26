import 'package:analyzer/dart/element/element.dart';

/// Analyzes cross-references between Dart files in a project.
///
/// Tracks dependencies between files by visiting elements and
/// recording references to types defined in other files.
class CrossReferenceAnalyzer extends ElementVisitor<void> {
  /// Maps file paths to sets of files they depend on
  final Map<String, Set<String>> dependencies = {};

  @override
  void visitClassElement(ClassElement element) {
    // final className = element.name;

    final filePath = element.source.fullName;

    dependencies[filePath] ??= {};

    print(' - Constructors(${element.constructors.length})');
    if (element.constructors.isNotEmpty) {
      for (final constructor in element.constructors) {
        visitConstructorElement(constructor);
      }
    }

    for (final method in element.methods) {
      visitMethodElement(method);
    }

    element.visitChildren(this);
  }

  @override
  void visitMethodElement(MethodElement element) {
    element.visitChildren(this);
  }

  /// Prints the collected file dependencies to the console
  void printDependencies() {
    print('\nFile dependencies:');

    for (final entry in dependencies.entries) {
      if (entry.value.isNotEmpty) {
        print('${entry.key} depends on:');

        for (final dep in entry.value) {
          print(' - $dep');
        }
      }
    }
  }

  @override
  void visitFieldElement(FieldElement element) {
    element.visitChildren(this);
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    element.visitChildren(this);
  }

  @override
  void visitTopLevelVariableElement(TopLevelVariableElement element) {
    element.visitChildren(this);
  }

  @override
  void visitFunctionElement(FunctionElement element) {
    element.visitChildren(this);
  }

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) => element.visitChildren(this);

  /// Try to find the source file for a type name by looking in known files
  // String? _findSourceFileForType(String typeName) {
  //   // Simple implementation: look through existing dependencies
  //   for (final entry in dependencies.entries) {
  //     for (final dep in entry.value) {
  //       if (dep.contains(typeName.toLowerCase())) {
  //         return dep;
  //       }
  //     }
  //   }
  //   return null;
  // }

  @override
  void visitConstructorElement(ConstructorElement element) {
    final constructorName = element.name.isEmpty ? 'default' : element.name;

    final filePath = element.source.fullName;
    dependencies[filePath] ??= {};

    // for (final param in element.parameters) {
    //   // Direct DAS call instead of _processDartType
    //   final type = param.type;
    //   if (!type.isDartCoreObject && type is! DynamicType) {
    //     final typeElement = type.element;
    //     if (typeElement != null) {
    //       final referencedFile = typeElement.source?.fullName;
    //       if (referencedFile != null && referencedFile != filePath) {
    //         dependencies[filePath]!.add(referencedFile);
    //       }
    //     } else if (type.toString().contains('InvalidType') && dasHelper != null) {
    //       // Try to call DAS directly for type resolution
    //       final offset = param.nameOffset;
    //       if (offset != -1) {
    //         // Calculate line and column from offset
    //         final content = io.File(filePath).readAsStringSync();
    //         int line = 0;
    //         int column = 0;
    //         for (int i = 0; i < offset && i < content.length; i++) {
    //           if (content[i] == '\n') {
    //             line++;
    //             column = 0;
    //           } else {
    //             column++;
    //           }
    //         }

    //         final lines = io.File(filePath).readAsLinesSync();
    //         print(
    //             '   Resolving InvalidType to ${param.name} at $line:$column - ${lines[line].trim()}');
    //         dasHelper
    //             ?.resolveType(filePath, line, column, name: param.name)
    //             .then((resolvedTypeName) {
    //           if (resolvedTypeName != null) {
    //             print('   Resolved InvalidType to $resolvedTypeName using DAS');
    //             final resolvedFile = _findSourceFileForType(resolvedTypeName);
    //             if (resolvedFile != null && resolvedFile != filePath) {
    //               dependencies[filePath]!.add(resolvedFile);
    //             }
    //           }
    //         });
    //       }
    //     }
    //   }
    // }

    final params = element.parameters
        .map((p) => '${p.isRequired ? '' : '['}${p.type} ${p.name}${p.isRequired ? '' : ']'}')
        .join(', ');

    print(' - Constructor: $constructorName($params)');
    element.visitChildren(this);
  }

  @override
  void visitEnumElement(EnumElement element) => element.visitChildren(this);

  @override
  void visitExtensionElement(ExtensionElement element) => element.visitChildren(this);

  @override
  void visitExtensionTypeElement(ExtensionTypeElement element) => element.visitChildren(this);

  @override
  void visitFieldFormalParameterElement(FieldFormalParameterElement element) =>
      element.visitChildren(this);

  @override
  void visitGenericFunctionTypeElement(GenericFunctionTypeElement element) =>
      element.visitChildren(this);

  @override
  void visitLabelElement(LabelElement element) => element.visitChildren(this);

  @override
  void visitLibraryElement(LibraryElement element) => element.visitChildren(this);

  @override
  void visitLibraryExportElement(LibraryExportElement element) => element.visitChildren(this);

  @override
  void visitLibraryImportElement(LibraryImportElement element) => element.visitChildren(this);

  @override
  void visitLocalVariableElement(LocalVariableElement element) => element.visitChildren(this);

  @override
  void visitMixinElement(MixinElement element) => element.visitChildren(this);

  @override
  void visitMultiplyDefinedElement(MultiplyDefinedElement element) => element.visitChildren(this);

  @override
  void visitParameterElement(ParameterElement element) => element.visitChildren(this);

  @override
  void visitPartElement(PartElement element) => element.visitChildren(this);

  @override
  void visitPrefixElement(PrefixElement element) => element.visitChildren(this);

  @override
  void visitSuperFormalParameterElement(SuperFormalParameterElement element) =>
      element.visitChildren(this);

  @override
  void visitTypeAliasElement(TypeAliasElement element) => element.visitChildren(this);

  @override
  void visitTypeParameterElement(TypeParameterElement element) => element.visitChildren(this);
}
