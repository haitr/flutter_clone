import 'package:analyzer/dart/element/type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as path;

part 'analyzer.g.dart';

extension on DartType {
  bool get isDartCore =>
      isDartCoreBool ||
      isDartCoreInt ||
      isDartCoreDouble ||
      isDartCoreString ||
      isDartCoreObject ||
      isDartCoreEnum ||
      isDartCoreFunction ||
      isDartCoreIterable ||
      isDartCoreList ||
      isDartCoreMap ||
      isDartCoreNull ||
      isDartCoreNum ||
      isDartCoreRecord ||
      isDartCoreSet ||
      isDartCoreSymbol ||
      isDartCoreType;
}

/// Analyzer for type references and annotations
@JsonSerializable(explicitToJson: true)
class TypeDefiningMetadata {
  /// The declaring file path of the type
  @JsonKey(includeIfNull: false)
  final String? path;

  /// The name of the type
  final String name;

  /// Type arguments for generic types
  @JsonKey(includeIfNull: false)
  final List<TypeParameterizedMetadata>? arguments;

  /// String representation of the type with its type arguments
  @override
  String toString() =>
      arguments == null ? name : '$name<${arguments!.map((e) => e.name).join(',')}>';

  /// Constructor for serialization
  ///
  /// [path] - The declaring file path of the type
  /// [name] - The name of the type
  /// [arguments] - Type arguments for generic types
  TypeDefiningMetadata({required this.name, this.path, this.arguments});

  /// Create an instance from JSON
  factory TypeDefiningMetadata.fromJson(Map<String, dynamic> json) =>
      _$TypeDefiningMetadataFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$TypeDefiningMetadataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TypeParameterizedMetadata extends TypeDefiningMetadata {
  /// Whether the type is nullable
  @JsonKey(name: 'null')
  final bool nullable;

  /// String representation of the type with its type arguments
  @override
  String toString() =>
      arguments == null ? name : '$name<${arguments!.map((e) => e.name).join(',')}>';

  /// Constructor for serialization
  ///
  /// [nullable] - Whether the type is nullable
  TypeParameterizedMetadata({
    required super.path,
    required super.name,
    this.nullable = false,
    super.arguments,
  });

  factory TypeParameterizedMetadata.fromDartType(DartType type, String projectPath) =>
      TypeParameterizedMetadata(
        path:
            !type.isDartCore
                ? path.relative(type.element!.source!.fullName, from: projectPath)
                : null,
        name: type.getDisplayString(),
        arguments:
            type is ParameterizedType
                ? type.typeArguments
                    .map((e) => TypeParameterizedMetadata.fromDartType(e, projectPath))
                    .toList()
                : null,
      );

  /// Create an instance from JSON
  factory TypeParameterizedMetadata.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterizedMetadataFromJson(json);
  // factory TypeDefiningMetadata.fromJson(Map<String, dynamic> json) => switch (json) {
  //   {'name': '_function_'} => FunctionTypeAnalyzer.fromJson(json),
  //   {'name': '_record_'} => RecordTypeAnalyzer.fromJson(json),
  //   _ => _$TypeAnalyzerFromJson(json),
  // };

  /// Convert this instance to JSON
  @override
  Map<String, dynamic> toJson() => _$TypeParameterizedMetadataToJson(this);
}

/// Analyzer for class declarations
@JsonSerializable(explicitToJson: true)
class ClassMetadata {
  /// The name of the class
  final String name;

  /// Type parameters defined on the class, if any
  @JsonKey(includeIfNull: false)
  late final List<TypeParameterizedMetadata>? typeParameters;

  /// The superclass of this class, if any
  @JsonKey(includeIfNull: false)
  late final TypeDefiningMetadata? supertype;

  /// Properties defined in the class, if any
  // @JsonKey(includeIfNull: false)
  // late final List<ClassPropertyDeclAnalyzer>? properties;

  // /// Constructors defined in the class, if any
  // @JsonKey(includeIfNull: false)
  // late final List<ConstructorAnalyzer>? constructors;

  // /// Methods defined in the class, if any
  // @JsonKey(includeIfNull: false)
  // late final List<MethodAnalyzer>? methods;

  /// Constructor for serialization
  ///
  /// [name] - The name of the class
  /// [typeParameters] - Type parameters defined on the class
  /// [properties] - Properties defined in the class
  /// [constructors] - Constructors defined in the class
  /// [methods] - Methods defined in the class
  /// [supertype] - The superclass of this class
  ClassMetadata(
    this.name, {
    this.typeParameters,
    this.supertype,
    // this.properties,
    // this.constructors,
    // this.methods,
  });

  /// String representation of the class with its type parameters and superclass
  // @override
  // String toString() {
  //   var result =
  //       typeParameters == null ? name : '$name<${typeParameters!.map((e) => e.name).join(',')}>';
  //   if (supertype != null) result += ' extends $supertype';
  //   return result;
  // }

  /// Create an instance from JSON
  factory ClassMetadata.fromJson(Map<String, dynamic> json) => _$ClassMetadataFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$ClassMetadataToJson(this);
}

/// Analyzer for mixin declarations
@JsonSerializable(explicitToJson: true)
class MixinMetadata {
  /// The name of the mixin
  final String name;

  /// Constructor for serialization
  ///
  /// [name] - The name of the mixin
  MixinMetadata(this.name);

  /// Create an instance from JSON
  factory MixinMetadata.fromJson(Map<String, dynamic> json) => _$MixinMetadataFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$MixinMetadataToJson(this);
}

/*
/// Abstract class representing a lazy analyzer for code analysis.
///
/// This class provides the base functionality for analyzers that lazily process code.
abstract class LazyAnalyzer {
  /// The name identifier for this analyzer
  final String name;

  /// Base64 encoded and BZip2 compressed content
  final String encode;

  /// Getter to decode the base64 encoded and BZip2 compressed string
  String get decode {
    final decodeBase64 = base64.decode(encode);
    return utf8.decode(BZip2Decoder().decodeBytes(decodeBase64));
  }

  /// Method to parse unresolved types, to be implemented by subclasses
  ///
  /// [ignores] - Set of type names to ignore during resolution
  /// Returns a list of occurrences of unresolved types
  List<Occurrence> parseUnresolvedTypes({Set<String> ignores = const {}});

  /// Constructor
  ///
  /// [name] - The name identifier for this analyzer
  /// [encode] - Base64 encoded and BZip2 compressed content
  LazyAnalyzer({required this.name, required this.encode});
}

/// Interface for analyzers that can have parameters
///
/// This interface defines the contract for analyzers that can work with parameters.
abstract interface class ParameterizableAnalyzer {
  /// List of parameter declarations in this analyzer
  late final List<ParameterDeclAnalyzer>? parameters;

  /// Reference to the parent class analyzer
  late final ClassMetadata parent;

  /// Access a parameter by name
  ///
  /// [name] - The name of the parameter to retrieve
  /// Returns the parameter declaration or null if not found
  ParameterDeclAnalyzer? operator [](String name);
}

/// Analyzer for declarations that are lazily parsed
@JsonSerializable(explicitToJson: true)
class LazyDeclAnalyzer extends LazyAnalyzer {
  /// Factory constructor to create an instance from a Dart AST node
  ///
  /// [node] - The AST node representing a named compilation unit member
  /// Returns a new LazyDeclAnalyzer instance
  factory LazyDeclAnalyzer.fromNode(NamedCompilationUnitMember node) => LazyDeclAnalyzer(
    name: node.name.toString(),
    encode: base64.encode(BZip2Encoder().encode(utf8.encode(node.toSource()))),
  );

  /// Parse unresolved types in the declaration
  ///
  /// [ignores] - Set of type names to ignore during resolution
  /// Returns a list of occurrences of unresolved types sorted by offset
  @override
  List<Occurrence> parseUnresolvedTypes({Set<String> ignores = const {}}) {
    final parsedUnit = parseString(content: decode).unit;
    final decl = parsedUnit.declarations.first;
    final visitor = UnsolvedTypeVisitor(ignores: ignores, verbose: false);
    decl.accept(visitor);
    return visitor.occurrences.sorted((a, b) => a.offset.compareTo(b.offset));
  }

  /// Constructor
  ///
  /// [name] - The name identifier for this analyzer
  /// [encode] - Base64 encoded and BZip2 compressed content
  LazyDeclAnalyzer({required super.name, required super.encode});

  /// Create an instance from JSON
  factory LazyDeclAnalyzer.fromJson(Map<String, dynamic> json) => _$LazyDeclAnalyzerFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$LazyDeclAnalyzerToJson(this);
}

/// Analyzer for class declarations that are lazily parsed
@JsonSerializable(explicitToJson: true)
class LazyClassDeclAnalyzer extends LazyDeclAnalyzer {
  /// Constructor
  ///
  /// [name] - The name identifier for this analyzer
  /// [encode] - Base64 encoded and BZip2 compressed content
  LazyClassDeclAnalyzer({required super.name, required super.encode});

  /// Factory constructor to create an instance from a Dart class declaration node
  ///
  /// [node] - The AST node representing a class declaration
  /// Returns a new LazyClassDeclAnalyzer instance
  factory LazyClassDeclAnalyzer.fromNode(ClassDeclaration node) => LazyClassDeclAnalyzer(
    name: node.name.toString(),
    encode: base64.encode(BZip2Encoder().encode(utf8.encode(node.toSource()))),
  );

  /// Analyze the class declaration to create a ClassAnalyzer instance
  ///
  /// Returns a fully analyzed ClassAnalyzer
  ClassMetadata analyze() {
    final parsedUnit = parseString(content: decode).unit;
    final decl = parsedUnit.declarations.first as ClassDeclaration;
    return ClassMetadata.create(decl);
  }

  /// Create an instance from JSON
  factory LazyClassDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$LazyClassDeclAnalyzerFromJson(json);

  /// Convert this instance to JSON
  @override
  Map<String, dynamic> toJson() => _$LazyClassDeclAnalyzerToJson(this);
}

/// Analyzer for method declarations
@JsonSerializable(explicitToJson: true)
class MethodAnalyzer extends LazyAnalyzer implements ParameterizableAnalyzer {
  /// Whether the method is static
  final bool isStatic;

  /// The return type of the method
  final TypeDefiningMetadata? returnType;

  /// List of parameter declarations in this method
  @override
  @JsonKey(includeIfNull: false, name: 'parameter')
  late final List<ParameterDeclAnalyzer>? parameters;

  /// Reference to the parent class analyzer
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final ClassMetadata parent;

  /// Parse unresolved types in the method body
  ///
  /// [ignores] - Set of type names to ignore during resolution
  /// Returns a list of occurrences of unresolved types sorted by offset
  @override
  List<Occurrence> parseUnresolvedTypes({Set<String> ignores = const {}}) {
    final parsedUnit = parseString(content: 'function(){$decode}').unit;
    final decl = parsedUnit.declarations.first as FunctionDeclaration;
    final visitor = UnsolvedTypeVisitor(
      ignores: ignores,
      paddingLeft: 11,
      paddingRight: 1,
      verbose: false,
    );
    decl.accept(visitor);
    return visitor.occurrences.sorted((a, b) => a.offset.compareTo(b.offset));
  }

  /// Factory constructor to create an instance from a method declaration node
  ///
  /// [node] - The AST node representing a method declaration
  /// Returns a new MethodAnalyzer instance
  factory MethodAnalyzer.fromNode(MethodDeclaration node) {
    var body = node.body.toString();
    body = body.substring(1, body.length - 1);
    final result = MethodAnalyzer(
      name: node.name.toString(),
      encode: base64.encode(BZip2Encoder().encode(utf8.encode(body))),
      isStatic: node.isStatic,
      returnType: TypeDefiningMetadata.from(node.returnType),
    );
    final visitor = ParameterizableDeclVisitor(result);
    node.parameters?.accept(visitor);
    result.parameters = visitor.list;
    return result;
  }

  /// Access a parameter by name
  ///
  /// [name] - The name of the parameter to retrieve
  /// Returns the parameter declaration or null if not found
  @override
  ParameterDeclAnalyzer? operator [](String name) {
    return parameters?.firstWhereOrNull((element) => element.name == name);
  }

  /// Constructor
  ///
  /// [name] - The name of the method
  /// [encode] - Base64 encoded and BZip2 compressed method body
  /// [isStatic] - Whether the method is static
  /// [returnType] - The return type of the method
  MethodAnalyzer({
    required super.name,
    required super.encode,
    required this.isStatic,
    this.returnType,
  });

  /// Create an instance from JSON
  factory MethodAnalyzer.fromJson(Map<String, dynamic> json) {
    var result = _$MethodAnalyzerFromJson(json);
    result.parameters?.forEach((e) => e.parent = result);
    return result;
  }

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$MethodAnalyzerToJson(this);
}

/// Analyzer for class property declarations
@JsonSerializable()
class ClassPropertyDeclAnalyzer extends PropertyDeclAnalyzer {
  /// Whether the property is static
  final bool isStatic;

  /// Factory method to create a ClassPropertyDeclAnalyzer from a VariableDeclaration node
  ///
  /// [decl] - The AST node representing a variable declaration
  /// [type] - The type annotation of the variable, if any
  /// [isStatic] - Whether the property is static
  /// Returns a new ClassPropertyDeclAnalyzer instance
  factory ClassPropertyDeclAnalyzer.from(
    VariableDeclaration decl, {
    TypeAnnotation? type,
    required bool isStatic,
  }) {
    return ClassPropertyDeclAnalyzer(
      decl.name.toString(),
      TypeDefiningMetadata.from(type),
      isStatic,
      nullable: type?.question != null,
      isConst: decl.isConst,
      isFinal: decl.isFinal,
      isLate: decl.isLate,
      initializer: decl.initializer?.toString(),
    );
  }

  /// Constructor for serialization
  ///
  /// [name] - The name of the property
  /// [type] - The type of the property
  /// [isStatic] - Whether the property is static
  /// [nullable] - Whether the type is nullable
  /// [isConst] - Whether the property is const
  /// [isFinal] - Whether the property is final
  /// [isLate] - Whether the property is late
  /// [initializer] - The initializer expression as a string, if any
  ClassPropertyDeclAnalyzer(
    super.name,
    super.type,
    this.isStatic, {
    required super.nullable,
    required super.isConst,
    required super.isFinal,
    required super.isLate,
    super.initializer,
  });

  /// Create an instance from JSON
  factory ClassPropertyDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$ClassPropertyDeclAnalyzerFromJson(json);

  /// Convert this instance to JSON
  @override
  Map<String, dynamic> toJson() => _$ClassPropertyDeclAnalyzerToJson(this);
}

/// Analyzer for property declarations
@JsonSerializable()
class PropertyDeclAnalyzer {
  /// The name of the property
  final String name;

  /// Whether the property type is nullable
  final bool nullable;

  /// Whether the property is const
  @JsonKey(name: 'const')
  final bool isConst;

  /// Whether the property is final
  @JsonKey(name: 'final')
  final bool isFinal;

  /// Whether the property is late
  @JsonKey(name: 'late')
  final bool isLate;

  /// The type of the property, if specified
  @JsonKey(includeIfNull: false)
  final TypeDefiningMetadata? type;

  /// The initializer expression as a string, if any
  @JsonKey(includeIfNull: false)
  final String? initializer;

  /// Factory method to create a PropertyDeclAnalyzer from a VariableDeclaration node
  ///
  /// [decl] - The AST node representing a variable declaration
  /// [type] - The type annotation of the variable, if any
  /// Returns a new PropertyDeclAnalyzer instance
  factory PropertyDeclAnalyzer.from(VariableDeclaration decl, {TypeAnnotation? type}) {
    return PropertyDeclAnalyzer(
      decl.name.toString(),
      TypeDefiningMetadata.from(type),
      nullable: type?.question != null,
      isConst: decl.isConst,
      isFinal: decl.isFinal,
      isLate: decl.isLate,
      initializer: decl.initializer?.toString(),
    );
  }

  /// Constructor for initialization
  ///
  /// [name] - The name of the property
  /// [type] - The type of the property
  /// [nullable] - Whether the type is nullable
  /// [isConst] - Whether the property is const
  /// [isFinal] - Whether the property is final
  /// [isLate] - Whether the property is late
  /// [initializer] - The initializer expression as a string, if any
  PropertyDeclAnalyzer(
    this.name,
    this.type, {
    required this.nullable,
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    this.initializer,
  });

  /// Create an instance from JSON
  factory PropertyDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$PropertyDeclAnalyzerFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$PropertyDeclAnalyzerToJson(this);
}

/// Analyzer for constructor declarations
@JsonSerializable()
class ConstructorAnalyzer implements ParameterizableAnalyzer {
  /// The name of the constructor, null for unnamed constructors
  @JsonKey(includeIfNull: false)
  final String? name;

  /// Information about a redirected constructor, if this is a redirecting constructor
  @JsonKey(includeIfNull: false, name: 'redirect')
  RedirectContructorAnalyzer? redirectConstructor;

  /// List of parameter declarations for this constructor
  @override
  @JsonKey(includeIfNull: false, name: 'parameter')
  late final List<ParameterDeclAnalyzer>? parameters;

  /// Reference to the parent class analyzer
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final ClassMetadata parent;

  /// Factory method to create a ConstructorAnalyzer from a ConstructorDeclaration node
  ///
  /// [parent] - The parent class analyzer
  /// [decl] - The AST node representing a constructor declaration
  ConstructorAnalyzer.create(this.parent, ConstructorDeclaration decl)
    : name = decl.name?.toString() {
    if (decl.redirectedConstructor case var redirect?) {
      redirectConstructor = RedirectContructorAnalyzer(
        TypeDefiningMetadata.from(redirect.type)!,
        name: redirect.name?.toString(),
      );
    }
    final visitor = ParameterizableDeclVisitor(this);
    decl.accept(visitor);
    parameters = visitor.list.nullIfEmpty;
  }

  /// Access a parameter by name
  ///
  /// [name] - The name of the parameter to retrieve
  /// Returns the parameter declaration or null if not found
  @override
  ParameterDeclAnalyzer? operator [](String name) {
    return parameters?.firstWhereOrNull((element) => element.name == name);
  }

  /// String representation of the constructor
  @override
  String toString() =>
      redirectConstructor != null
          ? redirectConstructor.toString()
          : 'constructor(${parent.name}.${name ?? ''})';

  /// Constructor for serialization
  ///
  /// [name] - The name of the constructor
  /// [parameters] - List of parameter declarations
  /// [redirectConstructor] - Information about a redirected constructor
  ConstructorAnalyzer({this.name, required this.parameters, this.redirectConstructor});

  /// Create an instance from JSON
  factory ConstructorAnalyzer.fromJson(Map<String, dynamic> json) {
    final result = _$ConstructorAnalyzerFromJson(json);
    result.parameters?.forEach((e) => e.parent = result);
    return result;
  }

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$ConstructorAnalyzerToJson(this);
}

/// Analyzer for redirect constructor declarations
@JsonSerializable()
class RedirectContructorAnalyzer {
  /// The type being redirected to
  final TypeDefiningMetadata type;

  /// The name of the constructor being redirected to, null for unnamed constructors
  @JsonKey(includeIfNull: false)
  final String? name;

  /// String representation of the redirect constructor
  @override
  String toString() => "redirectConstructor($type.${name ?? ''})";

  /// Constructor for initialization
  ///
  /// [type] - The type being redirected to
  /// [name] - The name of the constructor being redirected to
  RedirectContructorAnalyzer(this.type, {required this.name});

  /// Create an instance from JSON
  factory RedirectContructorAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$RedirectContructorAnalyzerFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$RedirectContructorAnalyzerToJson(this);
}

/// Analyzer for parameter declarations
@JsonSerializable()
class ParameterDeclAnalyzer {
  /// The name of the parameter
  final String name;

  /// The type of the parameter, if specified
  @JsonKey(includeIfNull: false)
  final TypeDefiningMetadata? type;

  /// Whether the parameter is named
  @JsonKey(name: 'named')
  final bool isNamed;

  /// Whether the parameter refers to a class field with this.
  @JsonKey(name: 'this')
  final bool toThis;

  /// Whether the parameter refers to a superclass field with super.
  @JsonKey(name: 'super')
  final bool toSuper;

  /// Whether the parameter type is explicitly typed
  @JsonKey(name: 'explicitly_typed')
  final bool isExplicitlyTyped;

  /// Whether the explicitly typed parameter is nullable
  @JsonKey(includeIfNull: false)
  final bool? isExplicitlyTypeNullable;

  /// Whether the parameter is required
  @JsonKey(name: 'required')
  final bool isRequired;

  /// The default value of the parameter as a string, if any
  @JsonKey(name: 'default', includeIfNull: false)
  final String? rawDefaultValue;

  /// Reference to the parent parametrizable analyzer
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final ParameterizableAnalyzer parent;

  /// Constructor for creating an instance with parent
  ///
  /// [parent] - The parent parametrizable analyzer
  /// [name] - The name of the parameter
  /// [type] - The type of the parameter
  /// [isNamed] - Whether the parameter is named
  /// [toThis] - Whether the parameter refers to a class field with this.
  /// [toSuper] - Whether the parameter refers to a superclass field with super.
  /// [isExplicitlyTyped] - Whether the parameter type is explicitly typed
  /// [isExplicitlyTypeNullable] - Whether the explicitly typed parameter is nullable
  /// [isRequired] - Whether the parameter is required
  /// [rawDefaultValue] - The default value of the parameter as a string
  ParameterDeclAnalyzer.create(
    this.parent,
    this.name,
    this.type, {
    required this.isNamed,
    this.toThis = false,
    this.toSuper = false,
    this.isExplicitlyTyped = false,
    this.isExplicitlyTypeNullable,
    this.isRequired = false,
    this.rawDefaultValue,
  }) : assert(!(toThis && toSuper), 'Cannot refer to this and super at the same time!'),
       assert(
         !isExplicitlyTyped || (isExplicitlyTypeNullable != null),
         'Missing nullable flag for explicit type',
       );

  /// Constructor for serialization
  ///
  /// [name] - The name of the parameter
  /// [type] - The type of the parameter
  /// [isNamed] - Whether the parameter is named
  /// [toThis] - Whether the parameter refers to a class field with this.
  /// [toSuper] - Whether the parameter refers to a superclass field with super.
  /// [isExplicitlyTyped] - Whether the parameter type is explicitly typed
  /// [isExplicitlyTypeNullable] - Whether the explicitly typed parameter is nullable
  /// [isRequired] - Whether the parameter is required
  /// [rawDefaultValue] - The default value of the parameter as a string
  ParameterDeclAnalyzer(
    this.name,
    this.type, {
    required this.isNamed,
    this.toThis = false,
    this.toSuper = false,
    this.isExplicitlyTyped = false,
    this.isExplicitlyTypeNullable,
    this.isRequired = false,
    this.rawDefaultValue,
  });

  /// Create an instance from JSON
  factory ParameterDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$ParameterDeclAnalyzerFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$ParameterDeclAnalyzerToJson(this);
}

/// Analyzer for type parameter declarations
@JsonSerializable()
class TypeParameterAnalyzer {
  /// The name of the type parameter
  late final String name;

  /// The bound type that this type parameter extends, if any
  @JsonKey(includeIfNull: false)
  late final TypeDefiningMetadata? extend;

  /// String representation of the type parameter
  @override
  String toString() => name;

  /// Constructor for creating an instance from TypeParameter
  ///
  /// [type] - The TypeParameter AST node
  TypeParameterAnalyzer.create(TypeParameter type) {
    name = type.name.toString();
    extend = TypeDefiningMetadata.from(type.bound);
  }

  /// Constructor for serialization
  ///
  /// [name] - The name of the type parameter
  /// [extend] - The bound type that this type parameter extends
  TypeParameterAnalyzer({required this.name, required this.extend});

  /// Create an instance from JSON
  factory TypeParameterAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterAnalyzerFromJson(json);

  /// Convert this instance to JSON
  Map<String, dynamic> toJson() => _$TypeParameterAnalyzerToJson(this);
}

/// Analyzer for record types
@JsonSerializable()
class RecordTypeAnalyzer extends TypeDefiningMetadata {
  /// Constructor for serialization
  ///
  /// [nullable] - Whether the record type is nullable
  RecordTypeAnalyzer({super.name = '_record_', super.nullable});

  /// String representation of the record type
  @override
  String toString() => name;

  /// Method to create a copy with optional nullable parameter
  ///
  /// [nullable] - Whether the copy should be nullable
  /// Returns a new RecordTypeAnalyzer with the specified nullability
  @override
  RecordTypeAnalyzer copyWith({bool? nullable}) {
    return RecordTypeAnalyzer(nullable: nullable ?? this.nullable);
  }

  /// Create an instance from JSON
  factory RecordTypeAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypeAnalyzerFromJson(json);

  /// Convert this instance to JSON
  @override
  Map<String, dynamic> toJson() => _$RecordTypeAnalyzerToJson(this);
}

/// Analyzer for function types
@JsonSerializable()
class FunctionTypeAnalyzer extends TypeDefiningMetadata {
  /// The return type of the function
  @JsonKey(includeIfNull: false)
  final TypeDefiningMetadata? returnType;

  /// The parameters of the function with optional names
  final List<(String?, TypeDefiningMetadata)> parameters;

  /// Constructor for serialization
  ///
  /// [nullable] - Whether the function type is nullable
  /// [returnType] - The return type of the function
  /// [parameters] - The parameters of the function
  FunctionTypeAnalyzer({
    super.name = '_function_',
    super.nullable,
    this.returnType,
    this.parameters = const [],
  });

  /// String representation of the function type
  @override
  String toString() => name;

  /// Method to create a copy with optional nullable parameter
  ///
  /// [nullable] - Whether the copy should be nullable
  /// Returns a new FunctionTypeAnalyzer with the specified nullability
  @override
  FunctionTypeAnalyzer copyWith({bool? nullable}) {
    return FunctionTypeAnalyzer(
      nullable: nullable ?? this.nullable,
      returnType: returnType,
      parameters: parameters.map((e) => (e.$1, e.$2.copyWith())).toList(),
    );
  }

  /// Create an instance from JSON
  factory FunctionTypeAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeAnalyzerFromJson(json);

  /// Convert this instance to JSON
  @override
  Map<String, dynamic> toJson() => _$FunctionTypeAnalyzerToJson(this);
}
*/
