library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class FormField<T> extends Wrapper {
  @Goto(_i1.FormField.new)
  FormField(
    $ $config, {
    _i2.Key? key,
    required _i1.FormFieldBuilder<T> builder,
    _i1.FormFieldSetter<T>? onSaved,
    _i1.FormFieldValidator<T>? validator,
    T? initialValue,
    bool enabled = true,
    _i1.AutovalidateMode? autovalidateMode,
    String? restorationId,
  }) : super(
          Argument({
            #key: key,
            #builder: builder,
            #onSaved: onSaved,
            #validator: validator,
            #initialValue: initialValue,
            #enabled: enabled,
            #autovalidateMode: autovalidateMode,
            #restorationId: restorationId,
          }),
          builder: (args) => _i1.FormField<T>(
            key: args(#key),
            builder: args(#builder),
            onSaved: args(#onSaved),
            validator: args(#validator),
            initialValue: args(#initialValue),
            enabled: args(#enabled),
            autovalidateMode: args(#autovalidateMode),
            restorationId: args(#restorationId),
          ),
        );
}

final class Form extends Wrapper {
  @Goto(_i1.Form.new)
  Form(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    bool? canPop,
    _i1.PopInvokedCallback? onPopInvoked,
    _i1.WillPopCallback? onWillPop,
    ui.VoidCallback? onChanged,
    _i1.AutovalidateMode? autovalidateMode,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #canPop: canPop,
            #onPopInvoked: onPopInvoked,
            #onWillPop: onWillPop,
            #onChanged: onChanged,
            #autovalidateMode: autovalidateMode,
          }),
          builder: (args) => _i1.Form(
            key: args(#key),
            child: args(#child),
            canPop: args(#canPop),
            onPopInvoked: args(#onPopInvoked),
            onWillPop: args(#onWillPop),
            onChanged: args(#onChanged),
            autovalidateMode: args(#autovalidateMode),
          ),
        );
}
