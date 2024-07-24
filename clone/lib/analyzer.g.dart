// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LazyDeclAnalyzer _$LazyDeclAnalyzerFromJson(Map<String, dynamic> json) =>
    LazyDeclAnalyzer(
      name: json['name'] as String,
      encode: json['encode'] as String,
    );

Map<String, dynamic> _$LazyDeclAnalyzerToJson(LazyDeclAnalyzer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'encode': instance.encode,
    };

LazyClassDeclAnalyzer _$LazyClassDeclAnalyzerFromJson(
        Map<String, dynamic> json) =>
    LazyClassDeclAnalyzer(
      name: json['name'] as String,
      encode: json['encode'] as String,
    );

Map<String, dynamic> _$LazyClassDeclAnalyzerToJson(
        LazyClassDeclAnalyzer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'encode': instance.encode,
    };

MethodAnalyzer _$MethodAnalyzerFromJson(Map<String, dynamic> json) =>
    MethodAnalyzer(
      name: json['name'] as String,
      encode: json['encode'] as String,
      isStatic: json['isStatic'] as bool,
      returnType: json['returnType'] == null
          ? null
          : TypeAnalyzer.fromJson(json['returnType'] as Map<String, dynamic>),
    )..parameters = (json['parameter'] as List<dynamic>?)
        ?.map((e) => ParameterDeclAnalyzer.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$MethodAnalyzerToJson(MethodAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'encode': instance.encode,
    'isStatic': instance.isStatic,
    'returnType': instance.returnType?.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'parameter', instance.parameters?.map((e) => e.toJson()).toList());
  return val;
}

ClassAnalyzer _$ClassAnalyzerFromJson(Map<String, dynamic> json) =>
    ClassAnalyzer(
      json['name'] as String,
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) =>
              ClassPropertyDeclAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
      constructors: (json['constructors'] as List<dynamic>?)
          ?.map((e) => ConstructorAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
      methods: (json['methods'] as List<dynamic>?)
          ?.map((e) => MethodAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..typeParameters = (json['typeParameters'] as List<dynamic>?)
          ?.map(
              (e) => TypeParameterAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList()
      ..superclass = json['superclass'] == null
          ? null
          : TypeAnalyzer.fromJson(json['superclass'] as Map<String, dynamic>);

Map<String, dynamic> _$ClassAnalyzerToJson(ClassAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('typeParameters',
      instance.typeParameters?.map((e) => e.toJson()).toList());
  writeNotNull(
      'properties', instance.properties?.map((e) => e.toJson()).toList());
  writeNotNull(
      'constructors', instance.constructors?.map((e) => e.toJson()).toList());
  writeNotNull('methods', instance.methods?.map((e) => e.toJson()).toList());
  writeNotNull('superclass', instance.superclass?.toJson());
  return val;
}

MixinAnalyzer _$MixinAnalyzerFromJson(Map<String, dynamic> json) =>
    MixinAnalyzer(
      json['name'] as String,
    );

Map<String, dynamic> _$MixinAnalyzerToJson(MixinAnalyzer instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ClassPropertyDeclAnalyzer _$ClassPropertyDeclAnalyzerFromJson(
        Map<String, dynamic> json) =>
    ClassPropertyDeclAnalyzer(
      json['name'] as String,
      json['type'] == null
          ? null
          : TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
      json['isStatic'] as bool,
      nullable: json['nullable'] as bool,
      isConst: json['const'] as bool,
      isFinal: json['final'] as bool,
      isLate: json['late'] as bool,
      initializer: json['initializer'] as String?,
    );

Map<String, dynamic> _$ClassPropertyDeclAnalyzerToJson(
    ClassPropertyDeclAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'nullable': instance.nullable,
    'const': instance.isConst,
    'final': instance.isFinal,
    'late': instance.isLate,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('initializer', instance.initializer);
  val['isStatic'] = instance.isStatic;
  return val;
}

PropertyDeclAnalyzer _$PropertyDeclAnalyzerFromJson(
        Map<String, dynamic> json) =>
    PropertyDeclAnalyzer(
      json['name'] as String,
      json['type'] == null
          ? null
          : TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
      nullable: json['nullable'] as bool,
      isConst: json['const'] as bool,
      isFinal: json['final'] as bool,
      isLate: json['late'] as bool,
      initializer: json['initializer'] as String?,
    );

Map<String, dynamic> _$PropertyDeclAnalyzerToJson(
    PropertyDeclAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'nullable': instance.nullable,
    'const': instance.isConst,
    'final': instance.isFinal,
    'late': instance.isLate,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('initializer', instance.initializer);
  return val;
}

ConstructorAnalyzer _$ConstructorAnalyzerFromJson(Map<String, dynamic> json) =>
    ConstructorAnalyzer(
      name: json['name'] as String?,
      parameters: (json['parameter'] as List<dynamic>?)
          ?.map(
              (e) => ParameterDeclAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
      redirectConstructor: json['redirect'] == null
          ? null
          : RedirectContructorAnalyzer.fromJson(
              json['redirect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConstructorAnalyzerToJson(ConstructorAnalyzer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('redirect', instance.redirectConstructor);
  writeNotNull('parameter', instance.parameters);
  return val;
}

RedirectContructorAnalyzer _$RedirectContructorAnalyzerFromJson(
        Map<String, dynamic> json) =>
    RedirectContructorAnalyzer(
      TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RedirectContructorAnalyzerToJson(
    RedirectContructorAnalyzer instance) {
  final val = <String, dynamic>{
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

ParameterDeclAnalyzer _$ParameterDeclAnalyzerFromJson(
        Map<String, dynamic> json) =>
    ParameterDeclAnalyzer(
      json['name'] as String,
      json['type'] == null
          ? null
          : TypeAnalyzer.fromJson(json['type'] as Map<String, dynamic>),
      isNamed: json['named'] as bool,
      toThis: json['this'] as bool? ?? false,
      toSuper: json['super'] as bool? ?? false,
      isExplicitlyTyped: json['explicitly_typed'] as bool? ?? false,
      isExplicitlyTypeNullable: json['isExplicitlyTypeNullable'] as bool?,
      isRequired: json['required'] as bool? ?? false,
      rawDefaultValue: json['default'] as String?,
    );

Map<String, dynamic> _$ParameterDeclAnalyzerToJson(
    ParameterDeclAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  val['named'] = instance.isNamed;
  val['this'] = instance.toThis;
  val['super'] = instance.toSuper;
  val['explicitly_typed'] = instance.isExplicitlyTyped;
  writeNotNull('isExplicitlyTypeNullable', instance.isExplicitlyTypeNullable);
  val['required'] = instance.isRequired;
  writeNotNull('default', instance.rawDefaultValue);
  return val;
}

TypeParameterAnalyzer _$TypeParameterAnalyzerFromJson(
        Map<String, dynamic> json) =>
    TypeParameterAnalyzer(
      name: json['name'] as String,
      extend: json['extend'] == null
          ? null
          : TypeAnalyzer.fromJson(json['extend'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeParameterAnalyzerToJson(
    TypeParameterAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('extend', instance.extend);
  return val;
}

TypeAnalyzer _$TypeAnalyzerFromJson(Map<String, dynamic> json) => TypeAnalyzer(
      name: json['name'] as String,
      nullable: json['null'] as bool? ?? false,
      arguments: (json['arguments'] as List<dynamic>?)
          ?.map((e) => TypeAnalyzer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TypeAnalyzerToJson(TypeAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'null': instance.nullable,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('arguments', instance.arguments);
  return val;
}

RecordTypeAnalyzer _$RecordTypeAnalyzerFromJson(Map<String, dynamic> json) =>
    RecordTypeAnalyzer(
      name: json['name'] as String? ?? '_record_',
      nullable: json['null'] as bool? ?? false,
    );

Map<String, dynamic> _$RecordTypeAnalyzerToJson(RecordTypeAnalyzer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'null': instance.nullable,
    };

FunctionTypeAnalyzer _$FunctionTypeAnalyzerFromJson(
        Map<String, dynamic> json) =>
    FunctionTypeAnalyzer(
      name: json['name'] as String? ?? '_function_',
      nullable: json['null'] as bool? ?? false,
      returnType: json['returnType'] == null
          ? null
          : TypeAnalyzer.fromJson(json['returnType'] as Map<String, dynamic>),
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => _$recordConvert(
                    e,
                    ($jsonValue) => (
                      $jsonValue[r'$1'] as String?,
                      TypeAnalyzer.fromJson(
                          $jsonValue[r'$2'] as Map<String, dynamic>),
                    ),
                  ))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FunctionTypeAnalyzerToJson(
    FunctionTypeAnalyzer instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'null': instance.nullable,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('returnType', instance.returnType);
  val['parameters'] = instance.parameters
      .map((e) => <String, dynamic>{
            r'$1': e.$1,
            r'$2': e.$2,
          })
      .toList();
  return val;
}

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
