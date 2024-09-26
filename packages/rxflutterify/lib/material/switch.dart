library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/services.dart' as _i6;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Switch extends Wrapper {
  @Goto(_i1.Switch.new)
  Switch({
    _i2.Key? key,
    required bool value,
    required _i2.ValueChanged<bool>? onChanged,
    ui.Color? activeColor,
    ui.Color? activeTrackColor,
    ui.Color? inactiveThumbColor,
    ui.Color? inactiveTrackColor,
    _i3.ImageProvider? activeThumbImage,
    _i3.ImageErrorListener? onActiveThumbImageError,
    _i3.ImageProvider? inactiveThumbImage,
    _i3.ImageErrorListener? onInactiveThumbImageError,
    _i4.WidgetStateProperty<ui.Color?>? thumbColor,
    _i4.WidgetStateProperty<ui.Color?>? trackColor,
    _i4.WidgetStateProperty<ui.Color?>? trackOutlineColor,
    _i4.WidgetStateProperty<double?>? trackOutlineWidth,
    _i4.WidgetStateProperty<_i4.Icon?>? thumbIcon,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i6.MouseCursor? mouseCursor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i4.FocusNode? focusNode,
    _i2.ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool>? $value,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool>?>? $onChanged,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with activeTrackColor
    Stream<ui.Color?>? $activeTrackColor,
    // Associate with inactiveThumbColor
    Stream<ui.Color?>? $inactiveThumbColor,
    // Associate with inactiveTrackColor
    Stream<ui.Color?>? $inactiveTrackColor,
    // Associate with activeThumbImage
    Stream<_i3.ImageProvider?>? $activeThumbImage,
    // Associate with onActiveThumbImageError
    Stream<_i3.ImageErrorListener?>? $onActiveThumbImageError,
    // Associate with inactiveThumbImage
    Stream<_i3.ImageProvider?>? $inactiveThumbImage,
    // Associate with onInactiveThumbImageError
    Stream<_i3.ImageErrorListener?>? $onInactiveThumbImageError,
    // Associate with thumbColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $thumbColor,
    // Associate with trackColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $trackColor,
    // Associate with trackOutlineColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $trackOutlineColor,
    // Associate with trackOutlineWidth
    Stream<_i4.WidgetStateProperty<double?>?>? $trackOutlineWidth,
    // Associate with thumbIcon
    Stream<_i4.WidgetStateProperty<_i4.Icon?>?>? $thumbIcon,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with mouseCursor
    Stream<_i6.MouseCursor?>? $mouseCursor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with autofocus
    Stream<bool>? $autofocus,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'onChanged': onChanged,
              'activeColor': activeColor,
              'activeTrackColor': activeTrackColor,
              'inactiveThumbColor': inactiveThumbColor,
              'inactiveTrackColor': inactiveTrackColor,
              'activeThumbImage': activeThumbImage,
              'onActiveThumbImageError': onActiveThumbImageError,
              'inactiveThumbImage': inactiveThumbImage,
              'onInactiveThumbImageError': onInactiveThumbImageError,
              'thumbColor': thumbColor,
              'trackColor': trackColor,
              'trackOutlineColor': trackOutlineColor,
              'trackOutlineWidth': trackOutlineWidth,
              'thumbIcon': thumbIcon,
              'materialTapTargetSize': materialTapTargetSize,
              'dragStartBehavior': dragStartBehavior,
              'mouseCursor': mouseCursor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'focusNode': focusNode,
              'onFocusChange': onFocusChange,
              'autofocus': autofocus,
            },
            stream: {
              'key': $key,
              'value': $value,
              'onChanged': $onChanged,
              'activeColor': $activeColor,
              'activeTrackColor': $activeTrackColor,
              'inactiveThumbColor': $inactiveThumbColor,
              'inactiveTrackColor': $inactiveTrackColor,
              'activeThumbImage': $activeThumbImage,
              'onActiveThumbImageError': $onActiveThumbImageError,
              'inactiveThumbImage': $inactiveThumbImage,
              'onInactiveThumbImageError': $onInactiveThumbImageError,
              'thumbColor': $thumbColor,
              'trackColor': $trackColor,
              'trackOutlineColor': $trackOutlineColor,
              'trackOutlineWidth': $trackOutlineWidth,
              'thumbIcon': $thumbIcon,
              'materialTapTargetSize': $materialTapTargetSize,
              'dragStartBehavior': $dragStartBehavior,
              'mouseCursor': $mouseCursor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'focusNode': $focusNode,
              'onFocusChange': $onFocusChange,
              'autofocus': $autofocus,
            },
          ),
          builder: (args) => _i1.Switch(
            key: args('key'),
            value: args('value'),
            onChanged: args('onChanged'),
            activeColor: args('activeColor'),
            activeTrackColor: args('activeTrackColor'),
            inactiveThumbColor: args('inactiveThumbColor'),
            inactiveTrackColor: args('inactiveTrackColor'),
            activeThumbImage: args('activeThumbImage'),
            onActiveThumbImageError: args('onActiveThumbImageError'),
            inactiveThumbImage: args('inactiveThumbImage'),
            onInactiveThumbImageError: args('onInactiveThumbImageError'),
            thumbColor: args('thumbColor'),
            trackColor: args('trackColor'),
            trackOutlineColor: args('trackOutlineColor'),
            trackOutlineWidth: args('trackOutlineWidth'),
            thumbIcon: args('thumbIcon'),
            materialTapTargetSize: args('materialTapTargetSize'),
            dragStartBehavior: args('dragStartBehavior'),
            mouseCursor: args('mouseCursor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            focusNode: args('focusNode'),
            onFocusChange: args('onFocusChange'),
            autofocus: args('autofocus'),
          ),
        );

  @Goto(_i1.Switch.adaptive)
  Switch.adaptive({
    _i2.Key? key,
    required bool value,
    required _i2.ValueChanged<bool>? onChanged,
    ui.Color? activeColor,
    ui.Color? activeTrackColor,
    ui.Color? inactiveThumbColor,
    ui.Color? inactiveTrackColor,
    _i3.ImageProvider? activeThumbImage,
    _i3.ImageErrorListener? onActiveThumbImageError,
    _i3.ImageProvider? inactiveThumbImage,
    _i3.ImageErrorListener? onInactiveThumbImageError,
    _i1.MaterialTapTargetSize? materialTapTargetSize,
    _i4.WidgetStateProperty<ui.Color?>? thumbColor,
    _i4.WidgetStateProperty<ui.Color?>? trackColor,
    _i4.WidgetStateProperty<ui.Color?>? trackOutlineColor,
    _i4.WidgetStateProperty<double?>? trackOutlineWidth,
    _i4.WidgetStateProperty<_i4.Icon?>? thumbIcon,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    _i6.MouseCursor? mouseCursor,
    ui.Color? focusColor,
    ui.Color? hoverColor,
    _i4.WidgetStateProperty<ui.Color?>? overlayColor,
    double? splashRadius,
    _i4.FocusNode? focusNode,
    _i2.ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    bool? applyCupertinoTheme,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with value
    Stream<bool>? $value,
    // Associate with onChanged
    Stream<_i2.ValueChanged<bool>?>? $onChanged,
    // Associate with activeColor
    Stream<ui.Color?>? $activeColor,
    // Associate with activeTrackColor
    Stream<ui.Color?>? $activeTrackColor,
    // Associate with inactiveThumbColor
    Stream<ui.Color?>? $inactiveThumbColor,
    // Associate with inactiveTrackColor
    Stream<ui.Color?>? $inactiveTrackColor,
    // Associate with activeThumbImage
    Stream<_i3.ImageProvider?>? $activeThumbImage,
    // Associate with onActiveThumbImageError
    Stream<_i3.ImageErrorListener?>? $onActiveThumbImageError,
    // Associate with inactiveThumbImage
    Stream<_i3.ImageProvider?>? $inactiveThumbImage,
    // Associate with onInactiveThumbImageError
    Stream<_i3.ImageErrorListener?>? $onInactiveThumbImageError,
    // Associate with materialTapTargetSize
    Stream<_i1.MaterialTapTargetSize?>? $materialTapTargetSize,
    // Associate with thumbColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $thumbColor,
    // Associate with trackColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $trackColor,
    // Associate with trackOutlineColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $trackOutlineColor,
    // Associate with trackOutlineWidth
    Stream<_i4.WidgetStateProperty<double?>?>? $trackOutlineWidth,
    // Associate with thumbIcon
    Stream<_i4.WidgetStateProperty<_i4.Icon?>?>? $thumbIcon,
    // Associate with dragStartBehavior
    Stream<_i5.DragStartBehavior>? $dragStartBehavior,
    // Associate with mouseCursor
    Stream<_i6.MouseCursor?>? $mouseCursor,
    // Associate with focusColor
    Stream<ui.Color?>? $focusColor,
    // Associate with hoverColor
    Stream<ui.Color?>? $hoverColor,
    // Associate with overlayColor
    Stream<_i4.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with splashRadius
    Stream<double?>? $splashRadius,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
    // Associate with onFocusChange
    Stream<_i2.ValueChanged<bool>?>? $onFocusChange,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with applyCupertinoTheme
    Stream<bool?>? $applyCupertinoTheme,
  }) : super(
          Argument(
            {
              'key': key,
              'value': value,
              'onChanged': onChanged,
              'activeColor': activeColor,
              'activeTrackColor': activeTrackColor,
              'inactiveThumbColor': inactiveThumbColor,
              'inactiveTrackColor': inactiveTrackColor,
              'activeThumbImage': activeThumbImage,
              'onActiveThumbImageError': onActiveThumbImageError,
              'inactiveThumbImage': inactiveThumbImage,
              'onInactiveThumbImageError': onInactiveThumbImageError,
              'materialTapTargetSize': materialTapTargetSize,
              'thumbColor': thumbColor,
              'trackColor': trackColor,
              'trackOutlineColor': trackOutlineColor,
              'trackOutlineWidth': trackOutlineWidth,
              'thumbIcon': thumbIcon,
              'dragStartBehavior': dragStartBehavior,
              'mouseCursor': mouseCursor,
              'focusColor': focusColor,
              'hoverColor': hoverColor,
              'overlayColor': overlayColor,
              'splashRadius': splashRadius,
              'focusNode': focusNode,
              'onFocusChange': onFocusChange,
              'autofocus': autofocus,
              'applyCupertinoTheme': applyCupertinoTheme,
            },
            stream: {
              'key': $key,
              'value': $value,
              'onChanged': $onChanged,
              'activeColor': $activeColor,
              'activeTrackColor': $activeTrackColor,
              'inactiveThumbColor': $inactiveThumbColor,
              'inactiveTrackColor': $inactiveTrackColor,
              'activeThumbImage': $activeThumbImage,
              'onActiveThumbImageError': $onActiveThumbImageError,
              'inactiveThumbImage': $inactiveThumbImage,
              'onInactiveThumbImageError': $onInactiveThumbImageError,
              'materialTapTargetSize': $materialTapTargetSize,
              'thumbColor': $thumbColor,
              'trackColor': $trackColor,
              'trackOutlineColor': $trackOutlineColor,
              'trackOutlineWidth': $trackOutlineWidth,
              'thumbIcon': $thumbIcon,
              'dragStartBehavior': $dragStartBehavior,
              'mouseCursor': $mouseCursor,
              'focusColor': $focusColor,
              'hoverColor': $hoverColor,
              'overlayColor': $overlayColor,
              'splashRadius': $splashRadius,
              'focusNode': $focusNode,
              'onFocusChange': $onFocusChange,
              'autofocus': $autofocus,
              'applyCupertinoTheme': $applyCupertinoTheme,
            },
          ),
          builder: (args) => _i1.Switch.adaptive(
            key: args('key'),
            value: args('value'),
            onChanged: args('onChanged'),
            activeColor: args('activeColor'),
            activeTrackColor: args('activeTrackColor'),
            inactiveThumbColor: args('inactiveThumbColor'),
            inactiveTrackColor: args('inactiveTrackColor'),
            activeThumbImage: args('activeThumbImage'),
            onActiveThumbImageError: args('onActiveThumbImageError'),
            inactiveThumbImage: args('inactiveThumbImage'),
            onInactiveThumbImageError: args('onInactiveThumbImageError'),
            materialTapTargetSize: args('materialTapTargetSize'),
            thumbColor: args('thumbColor'),
            trackColor: args('trackColor'),
            trackOutlineColor: args('trackOutlineColor'),
            trackOutlineWidth: args('trackOutlineWidth'),
            thumbIcon: args('thumbIcon'),
            dragStartBehavior: args('dragStartBehavior'),
            mouseCursor: args('mouseCursor'),
            focusColor: args('focusColor'),
            hoverColor: args('hoverColor'),
            overlayColor: args('overlayColor'),
            splashRadius: args('splashRadius'),
            focusNode: args('focusNode'),
            onFocusChange: args('onFocusChange'),
            autofocus: args('autofocus'),
            applyCupertinoTheme: args('applyCupertinoTheme'),
          ),
        );
}
