import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:path/path.dart' as path;

class CustomAstVisitor implements AstVisitor<void> {
  final bool verbose;
  final bool recursive;

  /// Initialize a newly created visitor.
  CustomAstVisitor({this.verbose = true, this.recursive = true});

  @override
  void visitAdjacentStrings(AdjacentStrings node) => _logAndVisitChildren(node);

  @override
  void visitAnnotation(Annotation node) => _logAndVisitChildren(node);

  @override
  void visitArgumentList(ArgumentList node) => _logAndVisitChildren(node);

  @override
  void visitAsExpression(AsExpression node) => _logAndVisitChildren(node);

  @override
  void visitAssertInitializer(AssertInitializer node) => _logAndVisitChildren(node);

  @override
  void visitAssertStatement(AssertStatement node) => _logAndVisitChildren(node);

  @override
  void visitAssignedVariablePattern(AssignedVariablePattern node) => _logAndVisitChildren(node);

  @override
  void visitAssignmentExpression(AssignmentExpression node) => _logAndVisitChildren(node);

  @override
  void visitAugmentationImportDirective(AugmentationImportDirective node) =>
      _logAndVisitChildren(node);

  @override
  void visitAwaitExpression(AwaitExpression node) => _logAndVisitChildren(node);

  @override
  void visitBinaryExpression(BinaryExpression node) => _logAndVisitChildren(node);

  @override
  void visitBlock(Block node) => _logAndVisitChildren(node);

  @override
  void visitBlockFunctionBody(BlockFunctionBody node) => _logAndVisitChildren(node);

  @override
  void visitBooleanLiteral(BooleanLiteral node) => _logAndVisitChildren(node);

  @override
  void visitBreakStatement(BreakStatement node) => _logAndVisitChildren(node);

  @override
  void visitCascadeExpression(CascadeExpression node) => _logAndVisitChildren(node);

  @override
  void visitCaseClause(CaseClause node) => _logAndVisitChildren(node);

  @override
  void visitCastPattern(CastPattern node) => _logAndVisitChildren(node);

  @override
  void visitCatchClause(CatchClause node) => _logAndVisitChildren(node);

  @override
  void visitCatchClauseParameter(CatchClauseParameter node) => _logAndVisitChildren(node);

  @override
  void visitClassDeclaration(ClassDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitClassTypeAlias(ClassTypeAlias node) => _logAndVisitChildren(node);

  @override
  // void visitComment(Comment node) => _logAndVisitChildren(node);
  void visitComment(Comment node) {}

  @override
  // void visitCommentReference(CommentReference node) => _logAndVisitChildren(node);
  void visitCommentReference(CommentReference node) {}

  @override
  void visitCompilationUnit(CompilationUnit node) => _logAndVisitChildren(node);

  @override
  void visitConditionalExpression(ConditionalExpression node) => _logAndVisitChildren(node);

  @override
  void visitConfiguration(Configuration node) => _logAndVisitChildren(node);

  @override
  void visitConstantPattern(ConstantPattern node) => _logAndVisitChildren(node);

  @override
  void visitConstructorDeclaration(ConstructorDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitConstructorFieldInitializer(ConstructorFieldInitializer node) =>
      _logAndVisitChildren(node);

  @override
  void visitConstructorName(ConstructorName node) => _logAndVisitChildren(node);

  @override
  void visitConstructorReference(ConstructorReference node) => _logAndVisitChildren(node);

  @override
  void visitConstructorSelector(ConstructorSelector node) => _logAndVisitChildren(node);

  @override
  void visitContinueStatement(ContinueStatement node) => _logAndVisitChildren(node);

  @override
  void visitDeclaredIdentifier(DeclaredIdentifier node) => _logAndVisitChildren(node);

  @override
  void visitDeclaredVariablePattern(DeclaredVariablePattern node) => _logAndVisitChildren(node);

  @override
  void visitDefaultFormalParameter(DefaultFormalParameter node) => _logAndVisitChildren(node);

  @override
  void visitDoStatement(DoStatement node) => _logAndVisitChildren(node);

  @override
  void visitDottedName(DottedName node) => _logAndVisitChildren(node);

  @override
  void visitDoubleLiteral(DoubleLiteral node) => _logAndVisitChildren(node);

  @override
  void visitEmptyFunctionBody(EmptyFunctionBody node) => _logAndVisitChildren(node);

  @override
  void visitEmptyStatement(EmptyStatement node) => _logAndVisitChildren(node);

  @override
  void visitEnumConstantArguments(EnumConstantArguments node) => _logAndVisitChildren(node);

  @override
  void visitEnumConstantDeclaration(EnumConstantDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitEnumDeclaration(EnumDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitExportDirective(ExportDirective node) => _logAndVisitChildren(node);

  @override
  void visitExpressionFunctionBody(ExpressionFunctionBody node) => _logAndVisitChildren(node);

  @override
  void visitExpressionStatement(ExpressionStatement node) => _logAndVisitChildren(node);

  @override
  void visitExtendsClause(ExtendsClause node) => _logAndVisitChildren(node);

  @override
  void visitExtensionDeclaration(ExtensionDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitExtensionOverride(ExtensionOverride node) => _logAndVisitChildren(node);

  @override
  void visitExtensionTypeDeclaration(ExtensionTypeDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitFieldDeclaration(FieldDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitFieldFormalParameter(FieldFormalParameter node) => _logAndVisitChildren(node);

  @override
  void visitForEachPartsWithDeclaration(ForEachPartsWithDeclaration node) =>
      _logAndVisitChildren(node);

  @override
  void visitForEachPartsWithIdentifier(ForEachPartsWithIdentifier node) =>
      _logAndVisitChildren(node);

  @override
  void visitForEachPartsWithPattern(ForEachPartsWithPattern node) => _logAndVisitChildren(node);

  @override
  void visitForElement(ForElement node) => _logAndVisitChildren(node);

  @override
  void visitFormalParameterList(FormalParameterList node) => _logAndVisitChildren(node);

  @override
  void visitForPartsWithDeclarations(ForPartsWithDeclarations node) => _logAndVisitChildren(node);

  @override
  void visitForPartsWithExpression(ForPartsWithExpression node) => _logAndVisitChildren(node);

  @override
  void visitForPartsWithPattern(ForPartsWithPattern node) => _logAndVisitChildren(node);

  @override
  void visitForStatement(ForStatement node) => _logAndVisitChildren(node);

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitFunctionDeclarationStatement(FunctionDeclarationStatement node) =>
      _logAndVisitChildren(node);

  @override
  void visitFunctionExpression(FunctionExpression node) => _logAndVisitChildren(node);

  @override
  void visitFunctionExpressionInvocation(FunctionExpressionInvocation node) =>
      _logAndVisitChildren(node);

  @override
  void visitFunctionReference(FunctionReference node) => _logAndVisitChildren(node);

  @override
  void visitFunctionTypeAlias(FunctionTypeAlias node) => _logAndVisitChildren(node);

  @override
  void visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) =>
      _logAndVisitChildren(node);

  @override
  void visitGenericFunctionType(GenericFunctionType node) => _logAndVisitChildren(node);

  @override
  void visitGenericTypeAlias(GenericTypeAlias node) => _logAndVisitChildren(node);

  @override
  void visitGuardedPattern(GuardedPattern node) => _logAndVisitChildren(node);

  @override
  void visitHideCombinator(HideCombinator node) => _logAndVisitChildren(node);

  @override
  void visitIfElement(IfElement node) => _logAndVisitChildren(node);

  @override
  void visitIfStatement(IfStatement node) => _logAndVisitChildren(node);

  @override
  void visitImplementsClause(ImplementsClause node) => _logAndVisitChildren(node);

  @override
  void visitImplicitCallReference(ImplicitCallReference node) => _logAndVisitChildren(node);

  @override
  void visitImportDirective(ImportDirective node) => _logAndVisitChildren(node);

  @override
  void visitImportPrefixReference(ImportPrefixReference node) => _logAndVisitChildren(node);

  @override
  void visitIndexExpression(IndexExpression node) => _logAndVisitChildren(node);

  @override
  void visitInstanceCreationExpression(InstanceCreationExpression node) =>
      _logAndVisitChildren(node);

  @override
  void visitIntegerLiteral(IntegerLiteral node) => _logAndVisitChildren(node);

  @override
  void visitInterpolationExpression(InterpolationExpression node) => _logAndVisitChildren(node);

  @override
  void visitInterpolationString(InterpolationString node) => _logAndVisitChildren(node);

  @override
  void visitIsExpression(IsExpression node) => _logAndVisitChildren(node);

  @override
  void visitLabel(Label node) => _logAndVisitChildren(node);

  @override
  void visitLabeledStatement(LabeledStatement node) => _logAndVisitChildren(node);

  @override
  void visitLibraryAugmentationDirective(LibraryAugmentationDirective node) {
    _logAndVisitChildren(node);
  }

  @override
  void visitLibraryDirective(LibraryDirective node) => _logAndVisitChildren(node);

  @override
  void visitLibraryIdentifier(LibraryIdentifier node) => _logAndVisitChildren(node);

  @override
  void visitListLiteral(ListLiteral node) => _logAndVisitChildren(node);

  @override
  void visitListPattern(ListPattern node) => _logAndVisitChildren(node);

  @override
  void visitLogicalAndPattern(LogicalAndPattern node) => _logAndVisitChildren(node);

  @override
  void visitLogicalOrPattern(LogicalOrPattern node) => _logAndVisitChildren(node);

  @override
  void visitMapLiteralEntry(MapLiteralEntry node) => _logAndVisitChildren(node);

  @override
  void visitMapPattern(MapPattern node) => _logAndVisitChildren(node);

  @override
  void visitMapPatternEntry(MapPatternEntry node) => _logAndVisitChildren(node);

  @override
  void visitMethodDeclaration(MethodDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitMethodInvocation(MethodInvocation node) => _logAndVisitChildren(node);

  @override
  void visitMixinDeclaration(MixinDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitNamedExpression(NamedExpression node) => _logAndVisitChildren(node);

  @override
  void visitNamedType(NamedType node) => _logAndVisitChildren(node);

  @override
  void visitNativeClause(NativeClause node) => _logAndVisitChildren(node);

  @override
  void visitNativeFunctionBody(NativeFunctionBody node) => _logAndVisitChildren(node);

  @override
  void visitNullAssertPattern(NullAssertPattern node) => _logAndVisitChildren(node);

  @override
  void visitNullCheckPattern(NullCheckPattern node) => _logAndVisitChildren(node);

  @override
  void visitNullLiteral(NullLiteral node) => _logAndVisitChildren(node);

  @override
  void visitObjectPattern(ObjectPattern node) => _logAndVisitChildren(node);

  @override
  void visitOnClause(OnClause node) => _logAndVisitChildren(node);

  @override
  void visitParenthesizedExpression(ParenthesizedExpression node) => _logAndVisitChildren(node);

  @override
  void visitParenthesizedPattern(ParenthesizedPattern node) => _logAndVisitChildren(node);

  @override
  void visitPartDirective(PartDirective node) => _logAndVisitChildren(node);

  @override
  void visitPartOfDirective(PartOfDirective node) => _logAndVisitChildren(node);

  @override
  void visitPatternAssignment(PatternAssignment node) => _logAndVisitChildren(node);

  @override
  void visitPatternField(PatternField node) => _logAndVisitChildren(node);

  @override
  void visitPatternFieldName(PatternFieldName node) => _logAndVisitChildren(node);

  @override
  void visitPatternVariableDeclaration(PatternVariableDeclaration node) =>
      _logAndVisitChildren(node);

  @override
  void visitPatternVariableDeclarationStatement(PatternVariableDeclarationStatement node) =>
      _logAndVisitChildren(node);

  @override
  void visitPostfixExpression(PostfixExpression node) => _logAndVisitChildren(node);

  @override
  void visitPrefixedIdentifier(PrefixedIdentifier node) => _logAndVisitChildren(node);

  @override
  void visitPrefixExpression(PrefixExpression node) => _logAndVisitChildren(node);

  @override
  void visitPropertyAccess(PropertyAccess node) => _logAndVisitChildren(node);

  @override
  void visitRecordLiteral(RecordLiteral node) => _logAndVisitChildren(node);

  @override
  void visitRecordPattern(RecordPattern node) => _logAndVisitChildren(node);

  @override
  void visitRecordTypeAnnotation(RecordTypeAnnotation node) => _logAndVisitChildren(node);

  @override
  void visitRecordTypeAnnotationNamedField(RecordTypeAnnotationNamedField node) =>
      _logAndVisitChildren(node);

  @override
  void visitRecordTypeAnnotationNamedFields(RecordTypeAnnotationNamedFields node) =>
      _logAndVisitChildren(node);

  @override
  void visitRecordTypeAnnotationPositionalField(RecordTypeAnnotationPositionalField node) =>
      _logAndVisitChildren(node);

  @override
  void visitRedirectingConstructorInvocation(RedirectingConstructorInvocation node) =>
      _logAndVisitChildren(node);

  @override
  void visitRelationalPattern(RelationalPattern node) => _logAndVisitChildren(node);

  @override
  void visitRepresentationConstructorName(RepresentationConstructorName node) =>
      _logAndVisitChildren(node);

  @override
  void visitRepresentationDeclaration(RepresentationDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitRestPatternElement(RestPatternElement node) => _logAndVisitChildren(node);

  @override
  void visitRethrowExpression(RethrowExpression node) => _logAndVisitChildren(node);

  @override
  void visitReturnStatement(ReturnStatement node) => _logAndVisitChildren(node);

  @override
  void visitScriptTag(ScriptTag node) => _logAndVisitChildren(node);

  @override
  void visitSetOrMapLiteral(SetOrMapLiteral node) => _logAndVisitChildren(node);

  @override
  void visitShowCombinator(ShowCombinator node) => _logAndVisitChildren(node);

  @override
  void visitSimpleFormalParameter(SimpleFormalParameter node) => _logAndVisitChildren(node);

  @override
  void visitSimpleIdentifier(SimpleIdentifier node) => _logAndVisitChildren(node);

  @override
  void visitSimpleStringLiteral(SimpleStringLiteral node) => _logAndVisitChildren(node);

  @override
  void visitSpreadElement(SpreadElement node) => _logAndVisitChildren(node);

  @override
  void visitStringInterpolation(StringInterpolation node) => _logAndVisitChildren(node);

  @override
  void visitSuperConstructorInvocation(SuperConstructorInvocation node) =>
      _logAndVisitChildren(node);

  @override
  void visitSuperExpression(SuperExpression node) => _logAndVisitChildren(node);

  @override
  void visitSuperFormalParameter(SuperFormalParameter node) => _logAndVisitChildren(node);

  @override
  void visitSwitchCase(SwitchCase node) => _logAndVisitChildren(node);

  @override
  void visitSwitchDefault(SwitchDefault node) => _logAndVisitChildren(node);

  @override
  void visitSwitchExpression(SwitchExpression node) => _logAndVisitChildren(node);

  @override
  void visitSwitchExpressionCase(SwitchExpressionCase node) => _logAndVisitChildren(node);

  @override
  void visitSwitchPatternCase(SwitchPatternCase node) => _logAndVisitChildren(node);

  @override
  void visitSwitchStatement(SwitchStatement node) => _logAndVisitChildren(node);

  @override
  void visitSymbolLiteral(SymbolLiteral node) => _logAndVisitChildren(node);

  @override
  void visitThisExpression(ThisExpression node) => _logAndVisitChildren(node);

  @override
  void visitThrowExpression(ThrowExpression node) => _logAndVisitChildren(node);

  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) =>
      _logAndVisitChildren(node);

  @override
  void visitTryStatement(TryStatement node) => _logAndVisitChildren(node);

  @override
  void visitTypeArgumentList(TypeArgumentList node) => _logAndVisitChildren(node);

  @override
  void visitTypeLiteral(TypeLiteral node) => _logAndVisitChildren(node);

  @override
  void visitTypeParameter(TypeParameter node) => _logAndVisitChildren(node);

  @override
  void visitTypeParameterList(TypeParameterList node) => _logAndVisitChildren(node);

  @override
  void visitVariableDeclaration(VariableDeclaration node) => _logAndVisitChildren(node);

  @override
  void visitVariableDeclarationList(VariableDeclarationList node) => _logAndVisitChildren(node);

  @override
  void visitVariableDeclarationStatement(VariableDeclarationStatement node) =>
      _logAndVisitChildren(node);

  @override
  void visitWhenClause(WhenClause node) => _logAndVisitChildren(node);

  @override
  void visitWhileStatement(WhileStatement node) => _logAndVisitChildren(node);

  @override
  void visitWildcardPattern(WildcardPattern node) => _logAndVisitChildren(node);

  @override
  void visitWithClause(WithClause node) => _logAndVisitChildren(node);

  @override
  void visitYieldStatement(YieldStatement node) => _logAndVisitChildren(node);

  void _logAndVisitChildren(AstNode node) {
    if (verbose) {
      var typeName = node.runtimeType.toString();
      if (typeName.endsWith('Impl')) {
        typeName = typeName.substring(0, typeName.length - 4);
      }
      print('Visit visit$typeName with node: $node');
    }
    if (recursive) node.visitChildren(this);
  }

  // @override
  // void visitAugmentedExpression(AugmentedExpression node) => _logAndVisitChildren(node);

  // @override
  // void visitAugmentedInvocation(AugmentedInvocation node) => _logAndVisitChildren(node);

  // @override
  // void visitExtensionOnClause(ExtensionOnClause node) => _logAndVisitChildren(node);

  // @override
  // void visitMixinOnClause(MixinOnClause node) => _logAndVisitChildren(node);
}

class _ImportAnalyzer {
  final String uri;
  final String? alias;

  _ImportAnalyzer({required this.uri, this.alias});
}

class _ConstructorAnalyzer {
  final String? name;
  final String declaration;
  final bool isConst;
  final bool factory;
  final Iterable<String> initializer;

  _ConstructorAnalyzer({
    required this.name,
    required this.declaration,
    required this.isConst,
    required this.factory,
    this.initializer = const [],
  });
}

class _ClassAnalyzer {
  final String name;
  final bool abstract;
  final bool base;
  final bool sealed;
  final String? extendClause;
  final String? implementClause;

  final constructors = <_ConstructorAnalyzer>[];
  final fields = <String>[];
  final methods = <_FunctionAnalyzer>[];

  _ClassAnalyzer({
    required this.name,
    this.abstract = false,
    this.base = false,
    this.sealed = false,
    this.extendClause,
    this.implementClause,
  });
}

class _FunctionAnalyzer {
  final String declaration;
  final bool external;

  _FunctionAnalyzer({required this.declaration, required this.external});
}

class Visitor extends CustomAstVisitor {
  final partOfs = <String>[];
  final imports = <_ImportAnalyzer>[];
  final parts = <String>[];
  final funcs = <_FunctionAnalyzer>[];
  final classes = <_ClassAnalyzer>[];
  final typeAliases = <String>[];
  final enums = <String>[];
  final vars = <String>[];

  final String filePath;
  Visitor(this.filePath, {super.verbose = false});

  @override
  void visitImportDirective(ImportDirective node) {
    super.visitImportDirective(node);
    if (node.uri.stringValue case final uri?) {
      if (RegExp(r'dart:(.*)').firstMatch(uri) case final match?) {
        if (match.group(1)! == 'ui') {
          return imports.add(_ImportAnalyzer(uri: '../ui/ui.dart', alias: node.prefix?.toString()));
        }
        if (!match.group(1)!.startsWith('_')) {
          return imports.add(_ImportAnalyzer(uri: uri, alias: node.prefix?.toString()));
        }
      } else {
        return imports.add(_ImportAnalyzer(uri: uri, alias: node.prefix?.toString()));
      }
    }
  }

  @override
  void visitPartDirective(PartDirective node) {
    super.visitPartDirective(node);
    if (node.uri.stringValue case final partFile?
        when File(path.join(path.dirname(filePath), partFile)).existsSync()) {
      parts.add(partFile);
    }
  }

  @override
  void visitPartOfDirective(PartOfDirective node) {
    super.visitPartOfDirective(node);
    partOfs.add(node.libraryName!.name);
  }

  @override
  void visitGenericTypeAlias(GenericTypeAlias node) {
    super.visitGenericTypeAlias(node);
    typeAliases.add(node.toString());
  }

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    super.visitFunctionDeclaration(node);
    funcs.add(_FunctionAnalyzer(
      declaration: node.toString().replaceFirst(node.functionExpression.body.toString(), ''),
      external: node.externalKeyword != null,
    ));
  }

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    super.visitClassDeclaration(node);
    final visitor = _ClassVisitor();
    node.accept(visitor);
    classes.add(visitor.analyzer);
  }

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    super.visitEnumDeclaration(node);
    enums.add(node.toString());
  }

  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    super.visitTopLevelVariableDeclaration(node);
    vars.add(node.toString());
  }
}

class _ClassVisitor extends CustomAstVisitor {
  _ClassVisitor({super.verbose = false});

  late final _ClassAnalyzer analyzer;

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    analyzer = _ClassAnalyzer(
      name: node.name.toString(),
      abstract: node.abstractKeyword != null,
      base: node.baseKeyword != null,
      sealed: node.sealedKeyword != null,
      extendClause: node.extendsClause?.toString(),
      implementClause: node.implementsClause?.toString(),
    );
    super.visitClassDeclaration(node);
  }

  @override
  void visitConstructorDeclaration(ConstructorDeclaration node) {
    super.visitConstructorDeclaration(node);
    analyzer.constructors.add(_ConstructorAnalyzer(
      name: node.name?.toString(),
      declaration: node.parameters.toString(),
      isConst: node.constKeyword != null,
      factory: node.factoryKeyword != null,
      initializer: node.initializers.map((e) => e.toString()),
    ));
  }

  @override
  void visitFieldDeclaration(FieldDeclaration node) {
    super.visitFieldDeclaration(node);
    analyzer.fields.add(node.toString());
  }

  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    analyzer.methods.add(_FunctionAnalyzer(
      declaration: node.toString().replaceFirst(node.body.toString(), ''),
      external: node.externalKeyword != null,
    ));
  }
}

// class X {
//   final String x;
//   factory X() => throw UnimplementedError();
//   const X.a() : x = '';
//   X.b() => throw UnimplementedError();
// }
