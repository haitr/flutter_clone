// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'helper.dart';

part 'analyzer.g.dart';
part 'analyzer.value.dart';
part 'analyzer.visitor.dart';

// Abstract class representing a lazy analyzer
abstract class LazyAnalyzer {
  final String name;
  final String encode;

  // Getter to decode the base64 encoded and BZip2 compressed string
  String get decode {
    final decodeBase64 = base64.decode(encode);
    return utf8.decode(BZip2Decoder().decodeBytes(decodeBase64));
  }

  // Method to parse unresolved types, to be implemented by subclasses
  List<Occurrence> parseUnresolvedTypes({Set<String> ignores = const {}});

  // Constructor
  LazyAnalyzer({required this.name, required this.encode});
}

// Interface for analyzers that can have parameters
abstract interface class ParameterizableAnalyzer {
  late final List<ParameterDeclAnalyzer>? parameters;
  late final ClassAnalyzer parent;

  ParameterDeclAnalyzer? operator [](String name);
}

@JsonSerializable(explicitToJson: true)
class LazyDeclAnalyzer extends LazyAnalyzer {
  // Factory constructor to create an instance from a Dart AST node
  factory LazyDeclAnalyzer.fromNode(NamedCompilationUnitMember node) => LazyDeclAnalyzer(
        name: node.name.toString(),
        encode: base64.encode(BZip2Encoder().encode(utf8.encode(node.toSource()))),
      );

  @override
  List<Occurrence> parseUnresolvedTypes({Set<String> ignores = const {}}) {
    final parsedUnit = parseString(content: decode).unit;
    final decl = parsedUnit.declarations.first;
    final visitor = _UnsolvedTypeVisitor(ignores: ignores, verbose: false);
    decl.accept(visitor);
    return visitor.occurrences.sorted((a, b) => a.offset.compareTo(b.offset));
  }

  // Constructor
  LazyDeclAnalyzer({required super.name, required super.encode});

  // JSON serialization
  factory LazyDeclAnalyzer.fromJson(Map<String, dynamic> json) => _$LazyDeclAnalyzerFromJson(json);
  Map<String, dynamic> toJson() => _$LazyDeclAnalyzerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LazyClassDeclAnalyzer extends LazyDeclAnalyzer {
  // Constructor
  LazyClassDeclAnalyzer({required super.name, required super.encode});

  // Factory constructor to create an instance from a Dart AST node
  factory LazyClassDeclAnalyzer.fromNode(ClassDeclaration node) => LazyClassDeclAnalyzer(
        name: node.name.toString(),
        encode: base64.encode(BZip2Encoder().encode(utf8.encode(node.toSource()))),
      );

  // Method to analyze the class declaration
  ClassAnalyzer analyze() {
    final parsedUnit = parseString(content: decode).unit;
    final decl = parsedUnit.declarations.first as ClassDeclaration;
    return ClassAnalyzer.create(decl);
  }

  // JSON serialization
  factory LazyClassDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$LazyClassDeclAnalyzerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LazyClassDeclAnalyzerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MethodAnalyzer extends LazyAnalyzer implements ParameterizableAnalyzer {
  final bool isStatic;
  final TypeAnalyzer? returnType;

  @override
  @JsonKey(includeIfNull: false, name: 'parameter')
  late final List<ParameterDeclAnalyzer>? parameters;

  // ignored
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final ClassAnalyzer parent;

  @override
  List<Occurrence> parseUnresolvedTypes({Set<String> ignores = const {}}) {
    final parsedUnit = parseString(content: 'function(){$decode}').unit;
    final decl = parsedUnit.declarations.first as FunctionDeclaration;
    final visitor =
        _UnsolvedTypeVisitor(ignores: ignores, paddingLeft: 11, paddingRight: 1, verbose: false);
    decl.accept(visitor);
    return visitor.occurrences.sorted((a, b) => a.offset.compareTo(b.offset));
  }

  // Factory constructor to create an instance from a Dart AST node
  factory MethodAnalyzer.fromNode(MethodDeclaration node) {
    var body = node.body.toString();
    body = body.substring(1, body.length - 1);
    final result = MethodAnalyzer(
      name: node.name.toString(),
      encode: base64.encode(BZip2Encoder().encode(utf8.encode(body))),
      isStatic: node.isStatic,
      returnType: TypeAnalyzer.from(node.returnType),
    );
    final visitor = ParameterizableDeclVisitor(result);
    node.parameters?.accept(visitor);
    result.parameters = visitor.list;
    return result;
  }

  @override
  ParameterDeclAnalyzer? operator [](String name) {
    return parameters?.firstWhereOrNull((element) => element.name == name);
  }

  // Constructor
  MethodAnalyzer({
    required super.name,
    required super.encode,
    required this.isStatic,
    this.returnType,
  });

  // JSON serialization
  factory MethodAnalyzer.fromJson(Map<String, dynamic> json) {
    var result = _$MethodAnalyzerFromJson(json);
    result.parameters?.forEach((e) => e.parent = result);
    return result;
  }

  Map<String, dynamic> toJson() => _$MethodAnalyzerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClassAnalyzer {
  final String name;
  @JsonKey(includeIfNull: false)
  late final List<TypeParameterAnalyzer>? typeParameters;
  @JsonKey(includeIfNull: false)
  late final List<ClassPropertyDeclAnalyzer>? properties;
  @JsonKey(includeIfNull: false)
  late final List<ConstructorAnalyzer>? constructors;
  @JsonKey(includeIfNull: false)
  late final List<MethodAnalyzer>? methods;
  @JsonKey(includeIfNull: false)
  late final TypeAnalyzer? superclass;

  // Factory method to create a ClassAnalyzer from a ClassDeclaration node
  ClassAnalyzer.create(ClassDeclaration decl) : name = decl.name.toString() {
    final visitor = ClassDeclVisitor(this);
    decl.accept(visitor);
    typeParameters =
        decl.typeParameters?.typeParameters.map((e) => TypeParameterAnalyzer.create(e)).toList();
    constructors = visitor.constructorList.nullIfEmpty;
    properties = visitor.properties.nullIfEmpty;
    methods = visitor.methods;
    superclass = TypeAnalyzer.from(decl.extendsClause?.superclass);
  }

  // Get the constructor by name
  ConstructorAnalyzer? constructor(String? name) =>
      constructors?.firstWhereOrNull((e) => e.name == name);

  // Get the property by name
  ClassPropertyDeclAnalyzer? property(String name) =>
      properties?.firstWhereOrNull((e) => e.name == name);

  // Get the method by name
  MethodAnalyzer? method(String name) => methods?.firstWhereOrNull((e) => e.name == name);

  @override
  String toString() {
    var result =
        typeParameters == null ? name : '$name<${typeParameters!.map((e) => e.name).join(',')}>';
    if (superclass != null) result += ' extends $superclass';
    return result;
  }

  // Get the type of the class
  TypeAnalyzer get type {
    return TypeAnalyzer(
      name: name,
      arguments: typeParameters?.map((e) => TypeAnalyzer(name: e.name)).toList(),
    );
  }

  // Constructor for serialization
  ClassAnalyzer(
    this.name, {
    this.properties,
    required this.constructors,
    this.methods,
  });

  // JSON factory constructor
  factory ClassAnalyzer.fromJson(Map<String, dynamic> json) {
    final result = _$ClassAnalyzerFromJson(json);
    result.constructors?.forEach((element) => element.parent = result);
    result.methods?.forEach((element) => element.parent = result);
    return result;
  }

  // JSON serialization method
  Map<String, dynamic> toJson() => _$ClassAnalyzerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MixinAnalyzer {
  final String name;

  // Factory method to create a MixinAnalyzer from a MixinDeclaration node
  MixinAnalyzer.create(MixinDeclaration decl) : name = decl.name.toString();

  // Constructor for serialization
  MixinAnalyzer(this.name);

  // JSON factory constructor
  factory MixinAnalyzer.fromJson(Map<String, dynamic> json) {
    final result = _$MixinAnalyzerFromJson(json);
    return result;
  }

  // JSON serialization method
  Map<String, dynamic> toJson() => _$MixinAnalyzerToJson(this);
}

@JsonSerializable()
class ClassPropertyDeclAnalyzer extends PropertyDeclAnalyzer {
  final bool isStatic;

  // Factory method to create a ClassPropertyDeclAnalyzer from a VariableDeclaration node
  factory ClassPropertyDeclAnalyzer.from(
    VariableDeclaration decl, {
    TypeAnnotation? type,
    required bool isStatic,
  }) {
    return ClassPropertyDeclAnalyzer(
      decl.name.toString(),
      TypeAnalyzer.from(type),
      isStatic,
      nullable: type?.question != null,
      isConst: decl.isConst,
      isFinal: decl.isFinal,
      isLate: decl.isLate,
      initializer: decl.initializer?.toString(),
    );
  }

  // Constructor for serialization
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

  // JSON factory constructor
  factory ClassPropertyDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$ClassPropertyDeclAnalyzerFromJson(json);

  // JSON serialization method
  @override
  Map<String, dynamic> toJson() => _$ClassPropertyDeclAnalyzerToJson(this);
}

@JsonSerializable()
class PropertyDeclAnalyzer {
  final String name;
  final bool nullable;
  @JsonKey(name: 'const')
  final bool isConst;
  @JsonKey(name: 'final')
  final bool isFinal;
  @JsonKey(name: 'late')
  final bool isLate;
  @JsonKey(includeIfNull: false)
  final TypeAnalyzer? type;
  @JsonKey(includeIfNull: false)
  final String? initializer;

  // Factory method to create a PropertyDeclAnalyzer from a VariableDeclaration node
  factory PropertyDeclAnalyzer.from(VariableDeclaration decl, {TypeAnnotation? type}) {
    return PropertyDeclAnalyzer(
      decl.name.toString(),
      TypeAnalyzer.from(type),
      nullable: type?.question != null,
      isConst: decl.isConst,
      isFinal: decl.isFinal,
      isLate: decl.isLate,
      initializer: decl.initializer?.toString(),
    );
  }

  // Constructor for initialization
  PropertyDeclAnalyzer(
    this.name,
    this.type, {
    required this.nullable,
    required this.isConst,
    required this.isFinal,
    required this.isLate,
    this.initializer,
  });

  // JSON factory constructor
  factory PropertyDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$PropertyDeclAnalyzerFromJson(json);

  // JSON serialization method
  Map<String, dynamic> toJson() => _$PropertyDeclAnalyzerToJson(this);
}

@JsonSerializable()
class ConstructorAnalyzer implements ParameterizableAnalyzer {
  @JsonKey(includeIfNull: false)
  final String? name;

  @JsonKey(includeIfNull: false, name: 'redirect')
  RedirectContructorAnalyzer? redirectConstructor;

  @override
  @JsonKey(includeIfNull: false, name: 'parameter')
  late final List<ParameterDeclAnalyzer>? parameters;

  // Ignored during serialization
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final ClassAnalyzer parent;

  // Factory method to create a ConstructorAnalyzer from a ConstructorDeclaration node
  ConstructorAnalyzer.create(this.parent, ConstructorDeclaration decl)
      : name = decl.name?.toString() {
    if (decl.redirectedConstructor case var redirect?) {
      redirectConstructor = RedirectContructorAnalyzer(
        TypeAnalyzer.from(redirect.type)!,
        name: redirect.name?.toString(),
      );
    }
    final visitor = ParameterizableDeclVisitor(this);
    decl.accept(visitor);
    parameters = visitor.list.nullIfEmpty;
  }

  // Operator to get a parameter by name
  @override
  ParameterDeclAnalyzer? operator [](String name) {
    return parameters?.firstWhereOrNull((element) => element.name == name);
  }

  @override
  String toString() => redirectConstructor != null
      ? redirectConstructor.toString()
      : 'constructor(${parent.name}.${name ?? ''})';

  // Constructor for serialization
  ConstructorAnalyzer({this.name, required this.parameters, this.redirectConstructor});

  // JSON factory constructor
  factory ConstructorAnalyzer.fromJson(Map<String, dynamic> json) {
    final result = _$ConstructorAnalyzerFromJson(json);
    result.parameters?.forEach((e) => e.parent = result);
    return result;
  }

  // JSON serialization method
  Map<String, dynamic> toJson() => _$ConstructorAnalyzerToJson(this);
}

@JsonSerializable()
class RedirectContructorAnalyzer {
  final TypeAnalyzer type;
  @JsonKey(includeIfNull: false)
  final String? name;

  @override
  String toString() => "redirectConstructor($type.${name ?? ''})";

  // Constructor for initialization
  RedirectContructorAnalyzer(this.type, {required this.name});

  // JSON factory constructor
  factory RedirectContructorAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$RedirectContructorAnalyzerFromJson(json);

  // JSON serialization method
  Map<String, dynamic> toJson() => _$RedirectContructorAnalyzerToJson(this);
}

@JsonSerializable()
class ParameterDeclAnalyzer {
  final String name;

  @JsonKey(includeIfNull: false)
  final TypeAnalyzer? type;

  @JsonKey(name: 'named')
  final bool isNamed;

  @JsonKey(name: 'this')
  final bool toThis;

  @JsonKey(name: 'super')
  final bool toSuper;

  @JsonKey(name: 'explicitly_typed')
  final bool isExplicitlyTyped;

  @JsonKey(includeIfNull: false)
  final bool? isExplicitlyTypeNullable;

  @JsonKey(name: 'required')
  final bool isRequired;

  @JsonKey(name: 'default', includeIfNull: false)
  final String? rawDefaultValue;

  // This field is ignored during JSON serialization
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final ParameterizableAnalyzer parent;

  // Constructor for creating an instance with parent
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
  })  : assert(!(toThis && toSuper), 'Cannot refer to this and super at the same time!'),
        assert(!isExplicitlyTyped || (isExplicitlyTypeNullable != null),
            'Missing nullable flag for explicit type');

  // Constructor for serialization
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

  // Factory method to create an instance from JSON
  factory ParameterDeclAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$ParameterDeclAnalyzerFromJson(json);

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() => _$ParameterDeclAnalyzerToJson(this);
}

@JsonSerializable()
class TypeParameterAnalyzer {
  late final String name;

  @JsonKey(includeIfNull: false)
  late final TypeAnalyzer? extend;

  @override
  String toString() => name;

  // Constructor for creating an instance from TypeParameter
  TypeParameterAnalyzer.create(TypeParameter type) {
    name = type.name.toString();
    extend = TypeAnalyzer.from(type.bound);
  }

  // Constructor for serialization
  TypeParameterAnalyzer({required this.name, required this.extend});

  // Factory method to create an instance from JSON
  factory TypeParameterAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$TypeParameterAnalyzerFromJson(json);

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() => _$TypeParameterAnalyzerToJson(this);
}

@JsonSerializable()
class TypeAnalyzer {
  final String name;

  @JsonKey(name: 'null')
  final bool nullable;

  @JsonKey(includeIfNull: false)
  final List<TypeAnalyzer>? arguments;

  // Static method to create an instance from TypeAnnotation
  static TypeAnalyzer? from(TypeAnnotation? node) {
    if (node == null) return null;
    final visitor = TypeDeclVisitor();
    node.accept(visitor);
    return visitor.type;
  }

  // Static method to create an instance from a raw string
  static TypeAnalyzer fromString(String raw) {
    final parsedUnit = parseString(content: 'const x = $raw();').unit;
    final visitor = _ParseTypeVisitor();
    parsedUnit.accept(visitor);
    return visitor.type;
  }

  @override
  String toString() =>
      arguments == null ? name : '$name<${arguments!.map((e) => e.name).join(',')}>';

  // Method to create a copy with optional nullable parameter
  TypeAnalyzer copyWith({bool? nullable}) {
    return TypeAnalyzer(
      name: name,
      nullable: nullable ?? this.nullable,
      arguments: arguments?.map((e) => e.copyWith()).toList(),
    );
  }

  // Constructor for serialization
  TypeAnalyzer({required this.name, this.nullable = false, this.arguments});

  // Factory method to create an instance from JSON
  factory TypeAnalyzer.fromJson(Map<String, dynamic> json) => switch (json) {
        {'name': '_function_'} => FunctionTypeAnalyzer.fromJson(json),
        {'name': '_record_'} => RecordTypeAnalyzer.fromJson(json),
        _ => _$TypeAnalyzerFromJson(json),
      };

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() => _$TypeAnalyzerToJson(this);
}

@JsonSerializable()
class RecordTypeAnalyzer extends TypeAnalyzer {
  RecordTypeAnalyzer({super.name = '_record_', super.nullable});

  @override
  String toString() => name;

  @override
  RecordTypeAnalyzer copyWith({bool? nullable}) {
    return RecordTypeAnalyzer(
      nullable: nullable ?? this.nullable,
    );
  }

  // Factory method to create an instance from JSON
  factory RecordTypeAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$RecordTypeAnalyzerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecordTypeAnalyzerToJson(this);
}

@JsonSerializable()
class FunctionTypeAnalyzer extends TypeAnalyzer {
  @JsonKey(includeIfNull: false)
  final TypeAnalyzer? returnType;
  final List<(String?, TypeAnalyzer)> parameters;

  FunctionTypeAnalyzer(
      {super.name = '_function_', super.nullable, this.returnType, this.parameters = const []});

  @override
  String toString() => name;

  @override
  FunctionTypeAnalyzer copyWith({bool? nullable}) {
    return FunctionTypeAnalyzer(
      nullable: nullable ?? this.nullable,
      returnType: returnType,
      parameters: parameters.map((e) => (e.$1, e.$2.copyWith())).toList(),
    );
  }

  // Factory method to create an instance from JSON
  factory FunctionTypeAnalyzer.fromJson(Map<String, dynamic> json) =>
      _$FunctionTypeAnalyzerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FunctionTypeAnalyzerToJson(this);
}
