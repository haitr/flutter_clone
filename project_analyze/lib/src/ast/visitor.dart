import 'package:analyzer/dart/element/element.dart';

import 'analyzer.dart';
import 'context.dart';

/// Analyzes cross-references between Dart files in a project.
///
/// Tracks dependencies between files by visiting elements and
/// recording references to types defined in other files.
class ElementAnalyzer extends ElementVisitor<void> {
  final AnalyzerContext context;

  ElementAnalyzer(this.context);

  final classes = <ClassElementSerializer>[];
  final mixins = <MixinElementSerializer>[];
  final typeAliases = <TypeAliasElementSerializer>[];
  final topLevelVariables = <TopLevelVariableElementSerializer>[];
  final topLevelFunctions = <FunctionElementSerializer>[];
  final enums = <EnumElementSerializer>[];
  final extensions = <ExtensionTypeElementSerializer>[];

  @override
  void visitClassElement(ClassElement element) {
    classes.add(ClassElementSerializer.from(element, context));
  }

  @override
  void visitMixinElement(MixinElement element) {
    mixins.add(MixinElementSerializer.from(element, context));
  }

  @override
  void visitEnumElement(EnumElement element) {
    enums.add(EnumElementSerializer.from(element, context));
  }

  @override
  void visitExtensionTypeElement(ExtensionTypeElement element) {
    extensions.add(ExtensionTypeElementSerializer.from(element, context));
  }

  @override
  void visitTypeAliasElement(TypeAliasElement element) {
    typeAliases.add(TypeAliasElementSerializer.from(element, context));
    element.visitChildren(this);
  }

  @override
  void visitTopLevelVariableElement(TopLevelVariableElement element) {
    topLevelVariables.add(TopLevelVariableElementSerializer.from(element, context));
  }

  @override
  void visitFunctionElement(FunctionElement element) {
    topLevelFunctions.add(FunctionElementSerializer.from(element, context));
  }

  @override
  void visitMethodElement(MethodElement element) => element.visitChildren(this);

  @override
  void visitFieldElement(FieldElement element) => element.visitChildren(this);

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) => element.visitChildren(this);

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) => element.visitChildren(this);

  @override
  void visitConstructorElement(ConstructorElement element) => element.visitChildren(this);

  @override
  void visitExtensionElement(ExtensionElement element) => element.visitChildren(this);

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
  void visitTypeParameterElement(TypeParameterElement element) => element.visitChildren(this);
}
