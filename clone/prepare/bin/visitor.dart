import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:path/path.dart' as path;

/// A visitor for AST nodes that optionally logs each visited node.
///
/// This visitor implements the [AstVisitor] interface and can be configured to:
/// - Log information about each visited node (verbose mode)
/// - Recursively visit child nodes
///
/// This is primarily used as a base class for more specific visitors.
class _VerboseAstVisitor implements AstVisitor<void> {
  /// Whether to log visited nodes
  final bool verbose;

  /// Whether to visit child nodes recursively
  final bool recursive;

  /// Initialize a newly created visitor.
  ///
  /// If [verbose] is true, information about each visited node will be printed.
  /// If [recursive] is true, child nodes will be visited automatically.
  _VerboseAstVisitor({required this.recursive, this.verbose = true});

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
  // Intentionally empty to avoid unnecessary comment processing
  void visitComment(Comment node) {}

  @override
  // Intentionally empty to avoid unnecessary comment reference processing
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

  // Below methods are commented out as they may be from newer Dart SDK versions
  // and not available in the current analyzer package version.

  // @override
  // void visitAugmentedExpression(AugmentedExpression node) => _logAndVisitChildren(node);

  // @override
  // void visitAugmentedInvocation(AugmentedInvocation node) => _logAndVisitChildren(node);

  // @override
  // void visitExtensionOnClause(ExtensionOnClause node) => _logAndVisitChildren(node);

  // @override
  // void visitMixinOnClause(MixinOnClause node) => _logAndVisitChildren(node);

  /// Logs the node being visited if verbose mode is enabled and recursively visits children if configured.
  ///
  /// This is a helper method called by all visit methods to:
  /// 1. Log information about the node (if [verbose] is true)
  /// 2. Visit child nodes (if [recursive] is true)
  ///
  /// @param node The AST node being processed
  void _logAndVisitChildren(AstNode node) {
    if (verbose) {
      var typeName = node.runtimeType.toString();
      // Remove 'Impl' suffix from implementation classes to get cleaner log output
      if (typeName.endsWith('Impl')) {
        typeName = typeName.substring(0, typeName.length - 4);
      }
      print('Visit visit$typeName with node: $node');
    }
    if (recursive) node.visitChildren(this);
  }
}

/// Represents information about an import directive in Dart code.
///
/// Contains details about the imported URI and any alias (prefix) used.
class _ImportAnalyzer {
  /// The URI being imported
  final String uri;

  /// Optional prefix/alias for the import (may be null)
  final String? alias;

  /// Creates a new import analyzer with the specified URI and optional alias.
  _ImportAnalyzer({required this.uri, this.alias});
}

/// Represents information about a constructor declaration in a Dart class.
///
/// Captures details including the constructor name, parameters, modifiers (const, factory),
/// and initializer lists.
class _ConstructorAnalyzer {
  /// Optional constructor name (null for unnamed/default constructors)
  final String? name;

  /// The parameter declaration string
  final String parameterDeclaration;

  /// Whether this is a const constructor
  final bool isConst;

  /// Whether this is a factory constructor
  final bool factory;

  /// The initializer declarations (e.g., `: field = value`)
  final Iterable<String> initializerDeclarations;

  /// Creates a new constructor analyzer with the specified properties.
  _ConstructorAnalyzer({
    required this.name,
    required this.parameterDeclaration,
    required this.isConst,
    required this.factory,
    this.initializerDeclarations = const [],
  });
}

/// Represents information about a class declaration in Dart code.
///
/// Captures details including the class name, modifiers (abstract, base, sealed),
/// inheritance relationships, and class members (constructors, fields, methods).
class _ClassAnalyzer {
  /// The name of the class
  final String name;

  /// Whether this is an abstract class
  final bool abstract;

  /// Whether this is a base class
  final bool base;

  /// Whether this is a sealed class
  final bool sealed;

  /// The extends clause (may be null)
  final String? extendClause;

  /// The implements clause (may be null)
  final String? implementClause;

  /// List of constructors in this class
  final constructors = <_ConstructorAnalyzer>[];

  /// List of field declarations in this class
  final fieldDeclarations = <String>[];

  /// List of methods in this class
  final methods = <_FunctionAnalyzer>[];

  /// Creates a new class analyzer with the specified properties.
  _ClassAnalyzer({
    required this.name,
    this.abstract = false,
    this.base = false,
    this.sealed = false,
    this.extendClause,
    this.implementClause,
  });
}

/// Represents information about a function or method declaration in Dart code.
///
/// Captures details including the full declaration text and whether the function is external.
class _FunctionAnalyzer {
  /// The complete function declaration text (excluding body)
  final String declaration;

  /// Whether this is an external function
  final bool external;

  /// Creates a new function analyzer with the specified properties.
  _FunctionAnalyzer({required this.declaration, required this.external});
}

/// A visitor for collecting information about a class declaration.
///
/// This visitor parses details about class declarations including:
/// - Class properties (name, modifiers)
/// - Constructors
/// - Fields
/// - Methods
class _ClassVisitor extends _VerboseAstVisitor {
  /// Creates a new class visitor with recursion enabled and verbose logging disabled.
  _ClassVisitor() : super(verbose: false, recursive: true);

  /// The analyzer containing the collected class information
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
      parameterDeclaration: node.parameters.toString(),
      isConst: node.constKeyword != null,
      factory: node.factoryKeyword != null,
      initializerDeclarations: node.initializers.map((e) => e.toString()),
    ));
  }

  @override
  void visitFieldDeclaration(FieldDeclaration node) {
    super.visitFieldDeclaration(node);
    analyzer.fieldDeclarations.add(node.toString());
  }

  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    analyzer.methods.add(_FunctionAnalyzer(
      declaration: node.toString().replaceFirst(node.body.toString(), ''),
      external: node.externalKeyword != null,
    ));
  }
}

/// A visitor for analyzing Dart source files.
///
/// This visitor collects comprehensive information about the contents of a Dart file including:
/// - Imports and exports
/// - Part/part of directives
/// - Top-level functions
/// - Classes
/// - Enums
/// - Type aliases
/// - Global variables
///
/// The collected information can be used for code generation, documentation, or analysis tasks.
class FileVisitor extends _VerboseAstVisitor {
  /// Part-of directives in this file
  final partOfs = <String>[];

  /// Import directives in this file
  final imports = <_ImportAnalyzer>[];

  /// Part directives in this file
  final parts = <String>[];

  /// Top-level functions in this file
  final funcs = <_FunctionAnalyzer>[];

  /// Class declarations in this file
  final classes = <_ClassAnalyzer>[];

  /// Type alias declarations in this file
  final typeAliases = <String>[];

  /// Enum declarations in this file
  final enumDeclarations = <String>[];

  /// Top-level variable declarations in this file
  final vars = <String>[];

  /// The absolute path to the Dart file being analyzed
  final String filePath;

  /// Creates a new file visitor for the specified file path.
  ///
  /// @param filePath The path to the Dart file being analyzed
  /// @param verbose Whether to enable verbose logging (defaults to false)
  /// @param recursive Whether to enable recursive visiting of child nodes (defaults to true)
  FileVisitor(this.filePath, {super.verbose = false, super.recursive = true});

  @override
  void visitImportDirective(ImportDirective node) {
    super.visitImportDirective(node);
    if (node.uri.stringValue case final uri?) {
      if (RegExp(r'dart:(.*)').firstMatch(uri) case final match?) {
        // Handle special case for dart:ui by replacing it with a local UI implementation
        if (match.group(1)! == 'ui') {
          return imports.add(_ImportAnalyzer(uri: '../ui/ui.dart', alias: node.prefix?.toString()));
        }
        // Skip private dart: imports (those starting with underscore)
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
    // Only include part files that actually exist on disk
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
      // Extract just the declaration part by removing the function body
      declaration: node.toString().replaceFirst(node.functionExpression.body.toString(), ''),
      external: node.externalKeyword != null,
    ));
  }

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    super.visitClassDeclaration(node);
    // Use a specialized visitor to collect detailed information about the class
    final visitor = _ClassVisitor();
    node.accept(visitor);
    classes.add(visitor.analyzer);
  }

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    super.visitEnumDeclaration(node);
    enumDeclarations.add(node.toString());
  }

  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    super.visitTopLevelVariableDeclaration(node);
    vars.add(node.toString());
  }
}
