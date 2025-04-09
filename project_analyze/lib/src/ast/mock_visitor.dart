import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';

/// A mock implementation of AstVisitor that visits every node.
class MockAstVisitor extends AstVisitor<void> {
  int _indent = 0;

  String get _indentString => '  ' * _indent;

  void _visitChildren(AstNode node) {
    print('${_indentString}Visiting ${node.runtimeType}');
    _indent++;
    node.visitChildren(this);
    _indent--;
  }

  @override
  void visitAdjacentStrings(AdjacentStrings node) {
    _visitChildren(node);
  }

  @override
  void visitAnnotation(Annotation node) {
    _visitChildren(node);
  }

  @override
  void visitArgumentList(ArgumentList node) {
    _visitChildren(node);
  }

  @override
  void visitAsExpression(AsExpression node) {
    _visitChildren(node);
  }

  @override
  void visitAssertInitializer(AssertInitializer node) {
    _visitChildren(node);
  }

  @override
  void visitAssertStatement(AssertStatement node) {
    _visitChildren(node);
  }

  @override
  void visitAssignmentExpression(AssignmentExpression node) {
    _visitChildren(node);
  }

  @override
  void visitAwaitExpression(AwaitExpression node) {
    _visitChildren(node);
  }

  @override
  void visitBinaryExpression(BinaryExpression node) {
    _visitChildren(node);
  }

  @override
  void visitBlock(Block node) {
    _visitChildren(node);
  }

  @override
  void visitBlockFunctionBody(BlockFunctionBody node) {
    _visitChildren(node);
  }

  @override
  void visitBooleanLiteral(BooleanLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitBreakStatement(BreakStatement node) {
    _visitChildren(node);
  }

  @override
  void visitCascadeExpression(CascadeExpression node) {
    _visitChildren(node);
  }

  @override
  void visitCatchClause(CatchClause node) {
    _visitChildren(node);
  }

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitClassTypeAlias(ClassTypeAlias node) {
    _visitChildren(node);
  }

  @override
  void visitComment(Comment node) {
    _visitChildren(node);
  }

  @override
  void visitCommentReference(CommentReference node) {
    _visitChildren(node);
  }

  @override
  void visitCompilationUnit(CompilationUnit node) {
    _visitChildren(node);
  }

  @override
  void visitConditionalExpression(ConditionalExpression node) {
    _visitChildren(node);
  }

  @override
  void visitConstructorDeclaration(ConstructorDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitConstructorFieldInitializer(ConstructorFieldInitializer node) {
    _visitChildren(node);
  }

  @override
  void visitConstructorName(ConstructorName node) {
    _visitChildren(node);
  }

  @override
  void visitContinueStatement(ContinueStatement node) {
    _visitChildren(node);
  }

  @override
  void visitDeclaredIdentifier(DeclaredIdentifier node) {
    _visitChildren(node);
  }

  @override
  void visitDefaultFormalParameter(DefaultFormalParameter node) {
    _visitChildren(node);
  }

  @override
  void visitDoStatement(DoStatement node) {
    _visitChildren(node);
  }

  @override
  void visitDoubleLiteral(DoubleLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitEmptyFunctionBody(EmptyFunctionBody node) {
    _visitChildren(node);
  }

  @override
  void visitEmptyStatement(EmptyStatement node) {
    _visitChildren(node);
  }

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitEnumConstantDeclaration(EnumConstantDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitExportDirective(ExportDirective node) {
    _visitChildren(node);
  }

  @override
  void visitExpressionFunctionBody(ExpressionFunctionBody node) {
    _visitChildren(node);
  }

  @override
  void visitExpressionStatement(ExpressionStatement node) {
    _visitChildren(node);
  }

  @override
  void visitExtendsClause(ExtendsClause node) {
    _visitChildren(node);
  }

  @override
  void visitExtensionDeclaration(ExtensionDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitExtensionOverride(ExtensionOverride node) {
    _visitChildren(node);
  }

  @override
  void visitFieldDeclaration(FieldDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitFieldFormalParameter(FieldFormalParameter node) {
    _visitChildren(node);
  }

  @override
  void visitForEachPartsWithDeclaration(ForEachPartsWithDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitForEachPartsWithIdentifier(ForEachPartsWithIdentifier node) {
    _visitChildren(node);
  }

  @override
  void visitForElement(ForElement node) {
    _visitChildren(node);
  }

  @override
  void visitFormalParameterList(FormalParameterList node) {
    _visitChildren(node);
  }

  @override
  void visitForPartsWithDeclarations(ForPartsWithDeclarations node) {
    _visitChildren(node);
  }

  @override
  void visitForPartsWithExpression(ForPartsWithExpression node) {
    _visitChildren(node);
  }

  @override
  void visitForStatement(ForStatement node) {
    _visitChildren(node);
  }

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitFunctionDeclarationStatement(FunctionDeclarationStatement node) {
    _visitChildren(node);
  }

  @override
  void visitFunctionExpression(FunctionExpression node) {
    _visitChildren(node);
  }

  @override
  void visitFunctionExpressionInvocation(FunctionExpressionInvocation node) {
    _visitChildren(node);
  }

  @override
  void visitFunctionTypeAlias(FunctionTypeAlias node) {
    _visitChildren(node);
  }

  @override
  void visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) {
    _visitChildren(node);
  }

  @override
  void visitGenericFunctionType(GenericFunctionType node) {
    _visitChildren(node);
  }

  @override
  void visitGenericTypeAlias(GenericTypeAlias node) {
    _visitChildren(node);
  }

  @override
  void visitHideCombinator(HideCombinator node) {
    _visitChildren(node);
  }

  @override
  void visitIfElement(IfElement node) {
    _visitChildren(node);
  }

  @override
  void visitIfStatement(IfStatement node) {
    _visitChildren(node);
  }

  @override
  void visitImplementsClause(ImplementsClause node) {
    _visitChildren(node);
  }

  @override
  void visitImportDirective(ImportDirective node) {
    _visitChildren(node);
  }

  @override
  void visitIndexExpression(IndexExpression node) {
    _visitChildren(node);
  }

  @override
  void visitInstanceCreationExpression(InstanceCreationExpression node) {
    _visitChildren(node);
  }

  @override
  void visitIntegerLiteral(IntegerLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitInterpolationExpression(InterpolationExpression node) {
    _visitChildren(node);
  }

  @override
  void visitInterpolationString(InterpolationString node) {
    _visitChildren(node);
  }

  @override
  void visitIsExpression(IsExpression node) {
    _visitChildren(node);
  }

  @override
  void visitLabel(Label node) {
    _visitChildren(node);
  }

  @override
  void visitLabeledStatement(LabeledStatement node) {
    _visitChildren(node);
  }

  @override
  void visitLibraryDirective(LibraryDirective node) {
    _visitChildren(node);
  }

  @override
  void visitLibraryIdentifier(LibraryIdentifier node) {
    _visitChildren(node);
  }

  @override
  void visitListLiteral(ListLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitMapLiteralEntry(MapLiteralEntry node) {
    _visitChildren(node);
  }

  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitMethodInvocation(MethodInvocation node) {
    _visitChildren(node);
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitNamedExpression(NamedExpression node) {
    _visitChildren(node);
  }

  @override
  void visitNamedType(NamedType node) {
    _visitChildren(node);
  }

  @override
  void visitNativeClause(NativeClause node) {
    _visitChildren(node);
  }

  @override
  void visitNativeFunctionBody(NativeFunctionBody node) {
    _visitChildren(node);
  }

  @override
  void visitNullLiteral(NullLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitParenthesizedExpression(ParenthesizedExpression node) {
    _visitChildren(node);
  }

  @override
  void visitPartDirective(PartDirective node) {
    _visitChildren(node);
  }

  @override
  void visitPartOfDirective(PartOfDirective node) {
    _visitChildren(node);
  }

  @override
  void visitPostfixExpression(PostfixExpression node) {
    _visitChildren(node);
  }

  @override
  void visitPrefixedIdentifier(PrefixedIdentifier node) {
    _visitChildren(node);
  }

  @override
  void visitPrefixExpression(PrefixExpression node) {
    _visitChildren(node);
  }

  @override
  void visitPropertyAccess(PropertyAccess node) {
    _visitChildren(node);
  }

  @override
  void visitRedirectingConstructorInvocation(RedirectingConstructorInvocation node) {
    _visitChildren(node);
  }

  @override
  void visitRethrowExpression(RethrowExpression node) {
    _visitChildren(node);
  }

  @override
  void visitReturnStatement(ReturnStatement node) {
    _visitChildren(node);
  }

  @override
  void visitScriptTag(ScriptTag node) {
    _visitChildren(node);
  }

  @override
  void visitSetOrMapLiteral(SetOrMapLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitShowCombinator(ShowCombinator node) {
    _visitChildren(node);
  }

  @override
  void visitSimpleFormalParameter(SimpleFormalParameter node) {
    _visitChildren(node);
  }

  @override
  void visitSimpleIdentifier(SimpleIdentifier node) {
    print('-- ${node.staticElement}');
    print('-- ${node.staticType}');
    _visitChildren(node);
  }

  @override
  void visitSimpleStringLiteral(SimpleStringLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitSpreadElement(SpreadElement node) {
    _visitChildren(node);
  }

  @override
  void visitStringInterpolation(StringInterpolation node) {
    _visitChildren(node);
  }

  @override
  void visitSuperConstructorInvocation(SuperConstructorInvocation node) {
    _visitChildren(node);
  }

  @override
  void visitSuperExpression(SuperExpression node) {
    _visitChildren(node);
  }

  @override
  void visitSwitchCase(SwitchCase node) {
    _visitChildren(node);
  }

  @override
  void visitSwitchDefault(SwitchDefault node) {
    _visitChildren(node);
  }

  @override
  void visitSwitchStatement(SwitchStatement node) {
    _visitChildren(node);
  }

  @override
  void visitSymbolLiteral(SymbolLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitThisExpression(ThisExpression node) {
    _visitChildren(node);
  }

  @override
  void visitThrowExpression(ThrowExpression node) {
    _visitChildren(node);
  }

  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitTryStatement(TryStatement node) {
    _visitChildren(node);
  }

  @override
  void visitTypeArgumentList(TypeArgumentList node) {
    _visitChildren(node);
  }

  @override
  void visitTypeParameter(TypeParameter node) {
    _visitChildren(node);
  }

  @override
  void visitTypeParameterList(TypeParameterList node) {
    _visitChildren(node);
  }

  @override
  void visitVariableDeclaration(VariableDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitVariableDeclarationList(VariableDeclarationList node) {
    _visitChildren(node);
  }

  @override
  void visitVariableDeclarationStatement(VariableDeclarationStatement node) {
    _visitChildren(node);
  }

  @override
  void visitWhileStatement(WhileStatement node) {
    _visitChildren(node);
  }

  @override
  void visitWithClause(WithClause node) {
    _visitChildren(node);
  }

  @override
  void visitYieldStatement(YieldStatement node) {
    _visitChildren(node);
  }

  @override
  void visitAssignedVariablePattern(AssignedVariablePattern node) {
    _visitChildren(node);
  }

  @override
  void visitAugmentedExpression(AugmentedExpression node) {
    _visitChildren(node);
  }

  @override
  void visitAugmentedInvocation(AugmentedInvocation node) {
    _visitChildren(node);
  }

  @override
  void visitCaseClause(CaseClause node) {
    _visitChildren(node);
  }

  @override
  void visitCastPattern(CastPattern node) {
    _visitChildren(node);
  }

  @override
  void visitCatchClauseParameter(CatchClauseParameter node) {
    _visitChildren(node);
  }

  @override
  void visitConfiguration(Configuration node) {
    _visitChildren(node);
  }

  @override
  void visitConstantPattern(ConstantPattern node) {
    _visitChildren(node);
  }

  @override
  void visitConstructorReference(ConstructorReference node) {
    _visitChildren(node);
  }

  @override
  void visitConstructorSelector(ConstructorSelector node) {
    _visitChildren(node);
  }

  @override
  void visitDeclaredVariablePattern(DeclaredVariablePattern node) {
    _visitChildren(node);
  }

  @override
  void visitDottedName(DottedName node) {
    _visitChildren(node);
  }

  @override
  void visitEnumConstantArguments(EnumConstantArguments node) {
    _visitChildren(node);
  }

  @override
  void visitExtensionOnClause(ExtensionOnClause node) {
    _visitChildren(node);
  }

  @override
  void visitExtensionTypeDeclaration(ExtensionTypeDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitForEachPartsWithPattern(ForEachPartsWithPattern node) {
    _visitChildren(node);
  }

  @override
  void visitForPartsWithPattern(ForPartsWithPattern node) {
    _visitChildren(node);
  }

  @override
  void visitFunctionReference(FunctionReference node) {
    _visitChildren(node);
  }

  @override
  void visitGuardedPattern(GuardedPattern node) {
    _visitChildren(node);
  }

  @override
  void visitImplicitCallReference(ImplicitCallReference node) {
    _visitChildren(node);
  }

  @override
  void visitImportPrefixReference(ImportPrefixReference node) {
    _visitChildren(node);
  }

  @override
  void visitListPattern(ListPattern node) {
    _visitChildren(node);
  }

  @override
  void visitLogicalAndPattern(LogicalAndPattern node) {
    _visitChildren(node);
  }

  @override
  void visitLogicalOrPattern(LogicalOrPattern node) {
    _visitChildren(node);
  }

  @override
  void visitMapPattern(MapPattern node) {
    _visitChildren(node);
  }

  @override
  void visitMapPatternEntry(MapPatternEntry node) {
    _visitChildren(node);
  }

  @override
  void visitMixinOnClause(MixinOnClause node) {
    _visitChildren(node);
  }

  @override
  void visitNullAssertPattern(NullAssertPattern node) {
    _visitChildren(node);
  }

  @override
  void visitNullAwareElement(NullAwareElement node) {
    _visitChildren(node);
  }

  @override
  void visitNullCheckPattern(NullCheckPattern node) {
    _visitChildren(node);
  }

  @override
  void visitObjectPattern(ObjectPattern node) {
    _visitChildren(node);
  }

  @override
  void visitParenthesizedPattern(ParenthesizedPattern node) {
    _visitChildren(node);
  }

  @override
  void visitPatternAssignment(PatternAssignment node) {
    _visitChildren(node);
  }

  @override
  void visitPatternField(PatternField node) {
    _visitChildren(node);
  }

  @override
  void visitPatternFieldName(PatternFieldName node) {
    _visitChildren(node);
  }

  @override
  void visitPatternVariableDeclaration(PatternVariableDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitPatternVariableDeclarationStatement(PatternVariableDeclarationStatement node) {
    _visitChildren(node);
  }

  @override
  void visitRecordLiteral(RecordLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitRecordPattern(RecordPattern node) {
    _visitChildren(node);
  }

  @override
  void visitRecordTypeAnnotation(RecordTypeAnnotation node) {
    _visitChildren(node);
  }

  @override
  void visitRecordTypeAnnotationNamedField(RecordTypeAnnotationNamedField node) {
    _visitChildren(node);
  }

  @override
  void visitRecordTypeAnnotationNamedFields(RecordTypeAnnotationNamedFields node) {
    _visitChildren(node);
  }

  @override
  void visitRecordTypeAnnotationPositionalField(RecordTypeAnnotationPositionalField node) {
    _visitChildren(node);
  }

  @override
  void visitRelationalPattern(RelationalPattern node) {
    _visitChildren(node);
  }

  @override
  void visitRepresentationConstructorName(RepresentationConstructorName node) {
    _visitChildren(node);
  }

  @override
  void visitRepresentationDeclaration(RepresentationDeclaration node) {
    _visitChildren(node);
  }

  @override
  void visitRestPatternElement(RestPatternElement node) {
    _visitChildren(node);
  }

  @override
  void visitSuperFormalParameter(SuperFormalParameter node) {
    _visitChildren(node);
  }

  @override
  void visitSwitchExpression(SwitchExpression node) {
    _visitChildren(node);
  }

  @override
  void visitSwitchExpressionCase(SwitchExpressionCase node) {
    _visitChildren(node);
  }

  @override
  void visitSwitchPatternCase(SwitchPatternCase node) {
    _visitChildren(node);
  }

  @override
  void visitTypeLiteral(TypeLiteral node) {
    _visitChildren(node);
  }

  @override
  void visitWhenClause(WhenClause node) {
    _visitChildren(node);
  }

  @override
  void visitWildcardPattern(WildcardPattern node) {
    _visitChildren(node);
  }
}

/// A mock implementation of ElementVisitor that visits every element.
class MockElementVisitor extends ElementVisitor<void> {
  int _indent = 0;

  String get _indentString => '  ' * _indent;

  void _visitChildren(Element element) {
    print('${_indentString}Visiting ${element.runtimeType}');
    _indent++;
    element.visitChildren(this);
    _indent--;
  }

  @override
  void visitClassElement(ClassElement element) {
    _visitChildren(element);
  }

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) {
    _visitChildren(element);
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    _visitChildren(element);
  }

  @override
  void visitEnumElement(EnumElement element) {
    _visitChildren(element);
  }

  @override
  void visitExtensionElement(ExtensionElement element) {
    _visitChildren(element);
  }

  @override
  void visitExtensionTypeElement(ExtensionTypeElement element) {
    _visitChildren(element);
  }

  @override
  void visitFieldElement(FieldElement element) {
    _visitChildren(element);
  }

  @override
  void visitFieldFormalParameterElement(FieldFormalParameterElement element) {
    _visitChildren(element);
  }

  @override
  void visitFunctionElement(FunctionElement element) {
    _visitChildren(element);
  }

  @override
  void visitGenericFunctionTypeElement(GenericFunctionTypeElement element) {
    _visitChildren(element);
  }

  @override
  void visitLabelElement(LabelElement element) {
    _visitChildren(element);
  }

  @override
  void visitLibraryElement(LibraryElement element) {
    _visitChildren(element);
  }

  @override
  void visitLibraryExportElement(LibraryExportElement element) {
    _visitChildren(element);
  }

  @override
  void visitLibraryImportElement(LibraryImportElement element) {
    _visitChildren(element);
  }

  @override
  void visitLocalVariableElement(LocalVariableElement element) {
    _visitChildren(element);
  }

  @override
  void visitMethodElement(MethodElement element) {
    _visitChildren(element);
  }

  @override
  void visitMixinElement(MixinElement element) {
    _visitChildren(element);
  }

  @override
  void visitMultiplyDefinedElement(MultiplyDefinedElement element) {
    _visitChildren(element);
  }

  @override
  void visitParameterElement(ParameterElement element) {
    _visitChildren(element);
  }

  @override
  void visitPartElement(PartElement element) {
    _visitChildren(element);
  }

  @override
  void visitPrefixElement(PrefixElement element) {
    _visitChildren(element);
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    _visitChildren(element);
  }

  @override
  void visitSuperFormalParameterElement(SuperFormalParameterElement element) {
    _visitChildren(element);
  }

  @override
  void visitTopLevelVariableElement(TopLevelVariableElement element) {
    _visitChildren(element);
  }

  @override
  void visitTypeParameterElement(TypeParameterElement element) {
    _visitChildren(element);
  }

  @override
  void visitTypeAliasElement(TypeAliasElement element) {
    _visitChildren(element);
  }
}
