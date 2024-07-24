// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:mirrors';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;

import 'analyzer.dart';
import 'result.dart';

// Default directories for output and dependencies
const defaultOutputDirectory = './generated';
const defaultDependenciesDirectory = './dependencies';

// Late initialized variables for mirror system and analysis results
late final MirrorSystem mirrorSystem;
late final List<AnalyzeResult> analyzingResults;

// Logger instance for standard logging
late final Logger logger;

// Extension on Symbol to extract the name
extension SymbolExt on Symbol {
  String get name => RegExp(r'Symbol\("(.*)"\)').firstMatch(toString())?.group(1) ?? '';
}

// Extension on DeclarationMirror to extract the simple name
extension DeclarationMirrorExt on DeclarationMirror {
  String get name => MirrorSystem.getName(simpleName);
}

// Extension on ClassMirror to get the true superclass, skipping mixins
extension ClassMirrorExt on ClassMirror {
  ClassMirror? get trueSuperclass {
    if (superclass != null && superclass!.name.contains('&')) {
      return superclass?.superclass;
    }
    return superclass;
  }
}

// Extension on List to return null if the list is empty
extension ListExt<T> on List<T> {
  List<T>? get nullIfEmpty => isNotEmpty ? this : null;
}

// Extension on Iterable of DeclarationMirror to filter and cast to List of ClassMirror
extension ListClassMirrorExt<T> on Iterable<DeclarationMirror> {
  List<ClassMirror> get classDeclarations => whereType<ClassMirror>().cast<ClassMirror>().toList();
}

// Extension on Iterable to check if it contains an element based on a condition
extension IterableContainsExt<T> on Iterable<T> {
  bool containsIf(bool Function(T e) callback) => firstWhereOrNull(callback) != null;
}

// Function to generate the correct Flutter import path from a raw string
String flutterImportPath(String raw) {
  final pathSegments = Uri.parse(raw).pathSegments;
  if (pathSegments.isNotEmpty && pathSegments.first == 'flutter') {
    final category = pathSegments[2];
    return 'package:flutter/$category.dart';
  }
  return raw;
}

// Function to create a file if it doesn't exist, given a list of path segments and an optional output directory
File createIfNeeded(List<String> paths, {String outputDirectory = defaultOutputDirectory}) {
  final filePath = path.joinAll([outputDirectory, ...paths]);
  final file = File(filePath);
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  return file;
}

// Function to parse an initializer string into a DefaultValue object, optionally using a parent ClassAnalyzer and a potential TypeAnalyzer
DefaultValue parseInitializerString(String initializer,
    {ClassAnalyzer? parent, TypeAnalyzer? potentialType}) {
  final result = parseString(content: 'const x = $initializer;');
  final visitor = _AssignExpressionVisitor(parent, potentialType: potentialType);
  result.unit.visitChildren(visitor);
  return visitor.result;
}

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

// Visitor class to handle assignment expressions and extract DefaultValue
class _AssignExpressionVisitor extends CustomAstVisitor {
  late DefaultValue result; // The result of the expression visit
  final ClassAnalyzer? parent; // Parent class analyzer
  final TypeAnalyzer? potentialType; // Potential type of the variable

  _AssignExpressionVisitor(this.parent, {this.potentialType})
      : super(recursive: true, verbose: false);

  // Visit variable declaration and extract the initializer
  @override
  void visitVariableDeclaration(VariableDeclaration node) {
    final visitor = ExpressionVisitor(parent, potentialType: potentialType);
    node.initializer!.accept(visitor); // Visit the initializer
    result = visitor.result; // Store the result
  }
}

// Extension to associate ClassAnalyzer with ClassMirror and retrieve mirrors
extension ClassAnalyzerWithMirror on ClassAnalyzer {
  static final Map<ClassAnalyzer, ClassMirror> _map = {}; // Cache for class mirrors

  // Associate a ClassMirror with the current ClassAnalyzer
  void associateWithMirror(ClassMirror mirror) => _map[this] = mirror;

  // Retrieve the associated ClassMirror, looking up if necessary
  ClassMirror get mirror {
    if (_map[this] case var mirror?) return mirror; // Return cached mirror if exists
    ClassMirror? mirror;

    // Look for mirror in cached analysis results
    for (final result in analyzingResults) {
      if (result.classDecls.entries.firstWhereOrNull((entry) => entry.value.name == name)
          case var entry?) {
        mirror = entry.key;
        break;
      }
    }

    // Look for mirror in the mirror system if not found in cached results
    if (mirror == null) {
      flutterLibraryLookUp((uri, libraryMirror) {
        libraryMirror.declarations.values.classDeclarations.forEachWhile((element) {
          if (element.name == name) {
            mirror = element;
            return false;
          }
          return true;
        });
      });
    }

    // Associate and return the found mirror
    associateWithMirror(mirror!);
    return mirror!;
  }
}

// Extension for resolving actual analyzers, especially for constructors
extension ParameterizableAnalyzerExt on ParameterizableAnalyzer {
  ParameterizableAnalyzer get actual {
    if (this case ConstructorAnalyzer constructor) {
      if (constructor.redirectConstructor case var redirect?) {
        ClassAnalyzer? classAnalyzer;

        // Look for the redirect constructor in analysis results
        for (final result in analyzingResults) {
          if (result.classDecls.values.firstWhereOrNull((clazz) => clazz.name == redirect.name)
              case var analyzed?) {
            classAnalyzer = analyzed;
            break;
          }

          // Look for the redirect constructor in private class declarations
          if (result.privateClassDecls.firstWhereOrNull((clazz) => clazz.name == redirect.type.name)
              case var lazyAnalyzed?) {
            classAnalyzer = lazyAnalyzed.analyze();
            break;
          }
        }

        // Return the resolved constructor or throw an error if not found
        if (classAnalyzer?.constructor(redirect.name) case var analyzed?) return analyzed;
        throw 'Cannot find redirect constructor $redirect';
      }
    }
    return this;
  }
}

// Extension for analyzing parameter declarations and resolving types, nullability, and default values
extension ParameterDeclAnalyzerWithMirror on ParameterDeclAnalyzer {
  static final _parentTypes = <ClassAnalyzer>[]; // Cache for parent types during type resolution

  // Resolve the declared type of the parameter
  TypeAnalyzer? get declaratedType {
    final parameter = parent.actual[name]!;

    // If explicitly typed, return the type and clear the parent types cache
    if (parameter.isExplicitlyTyped) {
      _parentTypes.clear();
      return parameter.type;
    }

    // If referring to a property of this class, resolve the type
    if (parameter.toThis) {
      if (parameter.parent.parent.property(name) case var property?) {
        if (property.type case var type?) {
          final classAnalyzer = parameter.parent.parent;
          var result = type.copyWith();

          // Correct type arguments based on parent types
          TypeAnalyzer? searchTypeInParents(TypeAnalyzer arg) {
            int? indexInClassDecl;

            // Check if the current type is a type argument
            classAnalyzer.typeParameters?.forEachIndexedWhile((index, classArg) {
              if (arg.name == classArg.name) {
                indexInClassDecl = index;
              }
              return arg.name != classArg.name;
            });

            TypeAnalyzer? replacingType;
            if (indexInClassDecl != null) {
              TypeAnalyzer? loopType;

              // Resolve type argument from parent types
              _parentTypes.forEachWhile((element) {
                if (element.superclass case var superclass?) {
                  loopType = superclass.arguments?.elementAtOrNull(indexInClassDecl!);
                  element.typeParameters?.forEachIndexedWhile((index, element) {
                    indexInClassDecl = index;
                    return element.name != loopType!.name;
                  });
                  if (loopType != null) replacingType = loopType;
                }
                return loopType == null;
              });
            }
            return replacingType;
          }

          final replacingType = searchTypeInParents(result);
          if (replacingType != null) result = replacingType.copyWith(nullable: result.nullable);

          result.arguments?.forEachIndexedWhile((index, arg) {
            final replacingType = searchTypeInParents(arg);
            if (replacingType != null) {
              result.arguments![index] = replacingType;
            }
            return true;
          });

          _parentTypes.clear();
          return result;
        }
        return null;
      }
      throw 'Unhandled type of parameter $name!';
    }

    // If referring to a superclass, resolve the type from the superclass
    if (parameter.toSuper) {
      _parentTypes.add(parameter.parent.parent);
      if (_parameterInSuper case var parameter?) {
        return parameter.declaratedType;
      }
    }

    throw 'Unhandled exception: type of $name!';
  }

  // Determine if the parameter is nullable
  bool get nullable {
    final parameter = parent.actual[name]!;
    if (parameter.isExplicitlyTyped) return parameter.isExplicitlyTypeNullable!;
    if (parameter.toThis) {
      if (parameter.parent.parent.property(name) case var property?) return property.nullable;
      throw 'Unhandled parameter $name!';
    }
    if (parameter.toSuper) {
      if (_parameterInSuper case var parameter?) return parameter.nullable;
    }
    throw 'Unhandled exception: $name!';
  }

  // Retrieve the default value of the parameter if any
  DefaultValue? get defaultValue {
    var parameter = parent.actual[name]!;
    var expr = parameter.rawDefaultValue;
    var referToSuper = parameter.toSuper;

    // Resolve default value from superclass if necessary
    while (expr == null && referToSuper) {
      if (parameter._parameterInSuper case var p?) {
        expr = p.rawDefaultValue;
        referToSuper = p.toSuper;
        parameter = p;
      }
    }

    if (expr case var expr?) {
      return parseInitializerString(
        expr,
        parent: parameter.parent.parent,
        potentialType: parameter.declaratedType,
      );
    }
    return null;
  }

  // Helper to retrieve parameter declaration from superclass
  ParameterDeclAnalyzer? get _parameterInSuper {
    final constructor = parent.actual;
    final superclass = constructor.parent.mirror.trueSuperclass;

    if (superclass case var superclass?) {
      ClassAnalyzer? classAnalyzer;

      analyzingResults.forEachWhile((result) {
        if (result.classDecls.values.firstWhereOrNull((e) => e.name == superclass.name)
            case var clazz?) {
          classAnalyzer = clazz;
          return false;
        } else if (result.privateClassDecls.firstWhereOrNull((e) => e.name == superclass.name)
            case var analyzer?) {
          classAnalyzer = analyzer.analyze();
          return false;
        }
        return true;
      });

      if (classAnalyzer!.constructor(null)![name] case var parameter?) {
        return parameter;
      }
    }
    return null;
  }
}

// Helper function to lookup Flutter library mirrors and execute an action on them
void flutterLibraryLookUp(void Function(Uri uri, LibraryMirror libraryMirror) action) {
  mirrorSystem.libraries.forEach((uri, value) {
    if (uri.scheme == 'package') {
      if (uri.pathSegments case [var first, ...] when first == 'flutter') action(uri, value);
    }
  });
}

// Function to find identifier declarations in Flutter libraries
String? idenfierFinder(String identifier) {
  String? result;
  flutterLibraryLookUp((uri, libMirror) {
    final instanceMirror = libMirror.declarations.values.firstWhereOrNull((mirror) =>
        (mirror is VariableMirror || mirror is MethodMirror || mirror is ClassMirror) &&
        mirror.name == identifier);
    result ??= instanceMirror?.location?.sourceUri.toString();
  });
  return result;
}

// Function to find enum declarations in Flutter libraries
String? enumFinder(String name) {
  String? result;
  flutterLibraryLookUp((uri, libMirror) {
    final instanceMirror = libMirror.declarations.values.firstWhereOrNull(
        (mirror) => mirror is ClassMirror && mirror.isEnum && mirror.name == name);
    result ??= instanceMirror?.location?.sourceUri.toString();
  });
  return result;
}

// Function to find class declarations in Flutter libraries
String? classFinder(String name) {
  String? result;
  flutterLibraryLookUp((uri, libMirror) {
    final instanceMirror = libMirror.declarations.values.firstWhereOrNull(
        (mirror) => mirror is ClassMirror && !mirror.isEnum && mirror.name == name);
    result ??= instanceMirror?.location?.sourceUri.toString();
  });
  return result;
}
