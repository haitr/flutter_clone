library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/animation.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoPopupSurface extends Wrapper {
  @Goto(_i1.CupertinoPopupSurface.new)
  CupertinoPopupSurface(
    $ $config, {
    _i2.Key? key,
    bool isSurfacePainted = true,
    _i3.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #isSurfacePainted: isSurfacePainted,
            #child: child,
          }),
          builder: (args) => _i1.CupertinoPopupSurface(
            key: args(#key),
            isSurfacePainted: args(#isSurfacePainted),
            child: args(#child),
          ),
        );
}

final class CupertinoActionSheet extends Wrapper {
  @Goto(_i1.CupertinoActionSheet.new)
  CupertinoActionSheet(
    $ $config, {
    _i2.Key? key,
    _i3.Widget? title,
    _i3.Widget? message,
    List<_i3.Widget>? actions,
    _i3.ScrollController? messageScrollController,
    _i3.ScrollController? actionScrollController,
    _i3.Widget? cancelButton,
  }) : super(
          Argument({
            #key: key,
            #title: title,
            #message: message,
            #actions: actions,
            #messageScrollController: messageScrollController,
            #actionScrollController: actionScrollController,
            #cancelButton: cancelButton,
          }),
          builder: (args) => _i1.CupertinoActionSheet(
            key: args(#key),
            title: args(#title),
            message: args(#message),
            actions: args(#actions),
            messageScrollController: args(#messageScrollController),
            actionScrollController: args(#actionScrollController),
            cancelButton: args(#cancelButton),
          ),
        );
}

final class CupertinoDialogAction extends Wrapper {
  @Goto(_i1.CupertinoDialogAction.new)
  CupertinoDialogAction(
    $ $config, {
    _i2.Key? key,
    ui.VoidCallback? onPressed,
    bool isDefaultAction = false,
    bool isDestructiveAction = false,
    _i4.TextStyle? textStyle,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #isDefaultAction: isDefaultAction,
            #isDestructiveAction: isDestructiveAction,
            #textStyle: textStyle,
            #child: child,
          }),
          builder: (args) => _i1.CupertinoDialogAction(
            key: args(#key),
            onPressed: args(#onPressed),
            isDefaultAction: args(#isDefaultAction),
            isDestructiveAction: args(#isDestructiveAction),
            textStyle: args(#textStyle),
            child: args(#child),
          ),
        );
}

final class CupertinoActionSheetAction extends Wrapper {
  @Goto(_i1.CupertinoActionSheetAction.new)
  CupertinoActionSheetAction(
    $ $config, {
    _i2.Key? key,
    required ui.VoidCallback onPressed,
    bool isDefaultAction = false,
    bool isDestructiveAction = false,
    required _i3.Widget child,
  }) : super(
          Argument({
            #key: key,
            #onPressed: onPressed,
            #isDefaultAction: isDefaultAction,
            #isDestructiveAction: isDestructiveAction,
            #child: child,
          }),
          builder: (args) => _i1.CupertinoActionSheetAction(
            key: args(#key),
            onPressed: args(#onPressed),
            isDefaultAction: args(#isDefaultAction),
            isDestructiveAction: args(#isDestructiveAction),
            child: args(#child),
          ),
        );
}

final class CupertinoAlertDialog extends Wrapper {
  @Goto(_i1.CupertinoAlertDialog.new)
  CupertinoAlertDialog(
    $ $config, {
    _i2.Key? key,
    _i3.Widget? title,
    _i3.Widget? content,
    List<_i3.Widget> actions = const [],
    _i3.ScrollController? scrollController,
    _i3.ScrollController? actionScrollController,
    Duration insetAnimationDuration = const Duration(milliseconds: 100),
    _i5.Curve insetAnimationCurve = _i5.Curves.decelerate,
  }) : super(
          Argument({
            #key: key,
            #title: title,
            #content: content,
            #actions: actions,
            #scrollController: scrollController,
            #actionScrollController: actionScrollController,
            #insetAnimationDuration: insetAnimationDuration,
            #insetAnimationCurve: insetAnimationCurve,
          }),
          builder: (args) => _i1.CupertinoAlertDialog(
            key: args(#key),
            title: args(#title),
            content: args(#content),
            actions: args(#actions),
            scrollController: args(#scrollController),
            actionScrollController: args(#actionScrollController),
            insetAnimationDuration: args(#insetAnimationDuration),
            insetAnimationCurve: args(#insetAnimationCurve),
          ),
        );
}
