library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoSearchTextField extends Wrapper {
  @Goto(_i1.CupertinoSearchTextField.new)
  CupertinoSearchTextField(
    $ $config, {
    _i2.Key? key,
    _i3.TextEditingController? controller,
    _i2.ValueChanged<String>? onChanged,
    _i2.ValueChanged<String>? onSubmitted,
    _i4.TextStyle? style,
    String? placeholder,
    _i4.TextStyle? placeholderStyle,
    _i4.BoxDecoration? decoration,
    ui.Color? backgroundColor,
    _i4.BorderRadius? borderRadius,
    _i5.TextInputType? keyboardType = _i5.TextInputType.text,
    _i4.EdgeInsetsGeometry padding = const _i4.EdgeInsetsDirectional.fromSTEB(
      5.5,
      8,
      5.5,
      8,
    ),
    ui.Color itemColor = _i1.CupertinoColors.secondaryLabel,
    double itemSize = 20.0,
    _i4.EdgeInsetsGeometry prefixInsets = const _i4.EdgeInsetsDirectional.fromSTEB(
      6,
      0,
      0,
      3,
    ),
    _i3.Widget prefixIcon = const _i3.Icon(_i1.CupertinoIcons.search),
    _i4.EdgeInsetsGeometry suffixInsets = const _i4.EdgeInsetsDirectional.fromSTEB(
      0,
      0,
      5,
      2,
    ),
    _i3.Icon suffixIcon = const _i3.Icon(_i1.CupertinoIcons.xmark_circle_fill),
    _i1.OverlayVisibilityMode suffixMode = _i1.OverlayVisibilityMode.editing,
    ui.VoidCallback? onSuffixTap,
    String? restorationId,
    _i3.FocusNode? focusNode,
    _i5.SmartQuotesType? smartQuotesType,
    _i5.SmartDashesType? smartDashesType,
    bool enableIMEPersonalizedLearning = true,
    bool autofocus = false,
    ui.VoidCallback? onTap,
    bool autocorrect = true,
    bool? enabled,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #onChanged: onChanged,
            #onSubmitted: onSubmitted,
            #style: style,
            #placeholder: placeholder,
            #placeholderStyle: placeholderStyle,
            #decoration: decoration,
            #backgroundColor: backgroundColor,
            #borderRadius: borderRadius,
            #keyboardType: keyboardType,
            #padding: padding,
            #itemColor: itemColor,
            #itemSize: itemSize,
            #prefixInsets: prefixInsets,
            #prefixIcon: prefixIcon,
            #suffixInsets: suffixInsets,
            #suffixIcon: suffixIcon,
            #suffixMode: suffixMode,
            #onSuffixTap: onSuffixTap,
            #restorationId: restorationId,
            #focusNode: focusNode,
            #smartQuotesType: smartQuotesType,
            #smartDashesType: smartDashesType,
            #enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
            #autofocus: autofocus,
            #onTap: onTap,
            #autocorrect: autocorrect,
            #enabled: enabled,
          }),
          builder: (args) => _i1.CupertinoSearchTextField(
            key: args(#key),
            controller: args(#controller),
            onChanged: args(#onChanged),
            onSubmitted: args(#onSubmitted),
            style: args(#style),
            placeholder: args(#placeholder),
            placeholderStyle: args(#placeholderStyle),
            decoration: args(#decoration),
            backgroundColor: args(#backgroundColor),
            borderRadius: args(#borderRadius),
            keyboardType: args(#keyboardType),
            padding: args(#padding),
            itemColor: args(#itemColor),
            itemSize: args(#itemSize),
            prefixInsets: args(#prefixInsets),
            prefixIcon: args(#prefixIcon),
            suffixInsets: args(#suffixInsets),
            suffixIcon: args(#suffixIcon),
            suffixMode: args(#suffixMode),
            onSuffixTap: args(#onSuffixTap),
            restorationId: args(#restorationId),
            focusNode: args(#focusNode),
            smartQuotesType: args(#smartQuotesType),
            smartDashesType: args(#smartDashesType),
            enableIMEPersonalizedLearning: args(#enableIMEPersonalizedLearning),
            autofocus: args(#autofocus),
            onTap: args(#onTap),
            autocorrect: args(#autocorrect),
            enabled: args(#enabled),
          ),
        );
}
