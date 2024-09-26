library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class FormField<T> extends Wrapper {
  @Goto(_i1.FormField.new)
  FormField({
    _i2.Key? key,
    required _i1.FormFieldBuilder<T> builder,
    _i1.FormFieldSetter<T>? onSaved,
    _i1.FormFieldValidator<T>? validator,
    T? initialValue,
    bool enabled = true,
    _i1.AutovalidateMode? autovalidateMode,
    String? restorationId,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with builder
    Stream<_i1.FormFieldBuilder<T>>? $builder,
    // Associate with onSaved
    Stream<_i1.FormFieldSetter<T>?>? $onSaved,
    // Associate with validator
    Stream<_i1.FormFieldValidator<T>?>? $validator,
    // Associate with initialValue
    Stream<T?>? $initialValue,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with autovalidateMode
    Stream<_i1.AutovalidateMode?>? $autovalidateMode,
    // Associate with restorationId
    Stream<String?>? $restorationId,
  }) : super(
          Argument(
            {
              'key': key,
              'builder': builder,
              'onSaved': onSaved,
              'validator': validator,
              'initialValue': initialValue,
              'enabled': enabled,
              'autovalidateMode': autovalidateMode,
              'restorationId': restorationId,
            },
            stream: {
              'key': $key,
              'builder': $builder,
              'onSaved': $onSaved,
              'validator': $validator,
              'initialValue': $initialValue,
              'enabled': $enabled,
              'autovalidateMode': $autovalidateMode,
              'restorationId': $restorationId,
            },
          ),
          builder: (args) => _i1.FormField<T>(
            key: args('key'),
            builder: args('builder'),
            onSaved: args('onSaved'),
            validator: args('validator'),
            initialValue: args('initialValue'),
            enabled: args('enabled'),
            autovalidateMode: args('autovalidateMode'),
            restorationId: args('restorationId'),
          ),
        );
}

final class Form extends Wrapper {
  @Goto(_i1.Form.new)
  Form({
    _i2.Key? key,
    required _i1.Widget child,
    bool? canPop,
    _i1.PopInvokedCallback? onPopInvoked,
    _i1.WillPopCallback? onWillPop,
    ui.VoidCallback? onChanged,
    _i1.AutovalidateMode? autovalidateMode,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
    // Associate with canPop
    Stream<bool?>? $canPop,
    // Associate with onPopInvoked
    Stream<_i1.PopInvokedCallback?>? $onPopInvoked,
    // Associate with onWillPop
    Stream<_i1.WillPopCallback?>? $onWillPop,
    // Associate with onChanged
    Stream<ui.VoidCallback?>? $onChanged,
    // Associate with autovalidateMode
    Stream<_i1.AutovalidateMode?>? $autovalidateMode,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'canPop': canPop,
              'onPopInvoked': onPopInvoked,
              'onWillPop': onWillPop,
              'onChanged': onChanged,
              'autovalidateMode': autovalidateMode,
            },
            stream: {
              'key': $key,
              'child': $child,
              'canPop': $canPop,
              'onPopInvoked': $onPopInvoked,
              'onWillPop': $onWillPop,
              'onChanged': $onChanged,
              'autovalidateMode': $autovalidateMode,
            },
          ),
          builder: (args) => _i1.Form(
            key: args('key'),
            child: args('child'),
            canPop: args('canPop'),
            onPopInvoked: args('onPopInvoked'),
            onWillPop: args('onWillPop'),
            onChanged: args('onChanged'),
            autovalidateMode: args('autovalidateMode'),
          ),
        );
}
