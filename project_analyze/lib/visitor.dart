import 'package:analyzer/dart/element/element.dart';

import 'ast/analyzer.dart';

/// Analyzes cross-references between Dart files in a project.
///
/// Tracks dependencies between files by visiting elements and
/// recording references to types defined in other files.
class ElementAnalyzer extends ElementVisitor<void> {
  final classes = <ClassMetadata>[];
  final mixins = <MixinMetadata>[];
  final privateClasses = <String>[];
  final privateMixins = <String>[];
  final typeAliases = <String, String>{};
  final topLevelVariables = <String>[];
  final topLevelFunctions = <String>[];
  final enums = <String>[];

  @override
  void visitClassElement(ClassElement element) {
    final className = element.name;
    print('- $className');
    print(element.supertype);
    print(element.allSupertypes);

    // if (element.constructors.isNotEmpty) {
    //   for (final constructor in element.constructors) {
    //     visitConstructorElement(constructor);
    //   }
    // }

    // for (final method in element.methods) {
    //   visitMethodElement(method);
    // }

    classes.add(ClassMetadata(className));
  }

  @override
  void visitMixinElement(MixinElement element) {
    final mixinName = element.name;
    mixins.add(MixinMetadata(mixinName));
  }

  @override
  void visitMethodElement(MethodElement element) => element.visitChildren(this);

  @override
  void visitFieldElement(FieldElement element) => element.visitChildren(this);

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) => element.visitChildren(this);

  @override
  void visitTopLevelVariableElement(TopLevelVariableElement element) => element.visitChildren(this);

  @override
  void visitFunctionElement(FunctionElement element) => element.visitChildren(this);

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) => element.visitChildren(this);

  @override
  void visitConstructorElement(ConstructorElement element) {
    final constructorName = element.name.isEmpty ? 'default' : element.name;
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
