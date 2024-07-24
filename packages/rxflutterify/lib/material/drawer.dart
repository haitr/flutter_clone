library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class Drawer extends Wrapper {
  @Goto(_i1.Drawer.new)
  Drawer(
    $ $config, {
    _i2.Key? key,
    ui.Color? backgroundColor,
    double? elevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i3.ShapeBorder? shape,
    double? width,
    _i4.Widget? child,
    String? semanticLabel,
    ui.Clip? clipBehavior,
  }) : super(
          Argument({
            #key: key,
            #backgroundColor: backgroundColor,
            #elevation: elevation,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #shape: shape,
            #width: width,
            #child: child,
            #semanticLabel: semanticLabel,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.Drawer(
            key: args(#key),
            backgroundColor: args(#backgroundColor),
            elevation: args(#elevation),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            shape: args(#shape),
            width: args(#width),
            child: args(#child),
            semanticLabel: args(#semanticLabel),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class DrawerController extends Wrapper {
  @Goto(_i1.DrawerController.new)
  DrawerController(
    $ $config, {
    _i4.GlobalKey? key,
    required _i4.Widget child,
    required _i1.DrawerAlignment alignment,
    bool isDrawerOpen = false,
    _i1.DrawerCallback? drawerCallback,
    _i5.DragStartBehavior dragStartBehavior = _i5.DragStartBehavior.start,
    ui.Color? scrimColor,
    double? edgeDragWidth,
    bool enableOpenDragGesture = true,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #alignment: alignment,
            #isDrawerOpen: isDrawerOpen,
            #drawerCallback: drawerCallback,
            #dragStartBehavior: dragStartBehavior,
            #scrimColor: scrimColor,
            #edgeDragWidth: edgeDragWidth,
            #enableOpenDragGesture: enableOpenDragGesture,
          }),
          builder: (args) => _i1.DrawerController(
            key: args(#key),
            child: args(#child),
            alignment: args(#alignment),
            isDrawerOpen: args(#isDrawerOpen),
            drawerCallback: args(#drawerCallback),
            dragStartBehavior: args(#dragStartBehavior),
            scrimColor: args(#scrimColor),
            edgeDragWidth: args(#edgeDragWidth),
            enableOpenDragGesture: args(#enableOpenDragGesture),
          ),
        );
}
