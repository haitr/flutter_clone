library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class ScaffoldMessenger extends Wrapper {
  @Goto(_i1.ScaffoldMessenger.new)
  ScaffoldMessenger({
    _i2.Key? key,
    required _i3.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i3.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
            },
            stream: {
              'key': $key,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ScaffoldMessenger(
            key: args('key'),
            child: args('child'),
          ),
        );
}

final class Scaffold extends Wrapper {
  @Goto(_i1.Scaffold.new)
  Scaffold({
    _i2.Key? key,
    _i3.PreferredSizeWidget? appBar,
    _i3.Widget? body,
    _i3.Widget? floatingActionButton,
    _i1.FloatingActionButtonLocation? floatingActionButtonLocation,
    _i1.FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<_i3.Widget>? persistentFooterButtons,
    _i4.AlignmentDirectional persistentFooterAlignment = _i4.AlignmentDirectional.centerEnd,
    _i3.Widget? drawer,
    _i1.DrawerCallback? onDrawerChanged,
    _i3.Widget? endDrawer,
    _i1.DrawerCallback? onEndDrawerChanged,
    _i3.Widget? bottomNavigationBar,
    _i3.Widget? bottomSheet,
    ui.Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool primary = true,
    _i5.DragStartBehavior drawerDragStartBehavior = _i5.DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    ui.Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
    String? restorationId,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with appBar
    Stream<_i3.PreferredSizeWidget?>? $appBar,
    // Associate with body
    Stream<_i3.Widget?>? $body,
    // Associate with floatingActionButton
    Stream<_i3.Widget?>? $floatingActionButton,
    // Associate with floatingActionButtonLocation
    Stream<_i1.FloatingActionButtonLocation?>? $floatingActionButtonLocation,
    // Associate with floatingActionButtonAnimator
    Stream<_i1.FloatingActionButtonAnimator?>? $floatingActionButtonAnimator,
    // Associate with persistentFooterButtons
    Stream<List<_i3.Widget>?>? $persistentFooterButtons,
    // Associate with persistentFooterAlignment
    Stream<_i4.AlignmentDirectional>? $persistentFooterAlignment,
    // Associate with drawer
    Stream<_i3.Widget?>? $drawer,
    // Associate with onDrawerChanged
    Stream<_i1.DrawerCallback?>? $onDrawerChanged,
    // Associate with endDrawer
    Stream<_i3.Widget?>? $endDrawer,
    // Associate with onEndDrawerChanged
    Stream<_i1.DrawerCallback?>? $onEndDrawerChanged,
    // Associate with bottomNavigationBar
    Stream<_i3.Widget?>? $bottomNavigationBar,
    // Associate with bottomSheet
    Stream<_i3.Widget?>? $bottomSheet,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with resizeToAvoidBottomInset
    Stream<bool?>? $resizeToAvoidBottomInset,
    // Associate with primary
    Stream<bool>? $primary,
    // Associate with drawerDragStartBehavior
    Stream<_i5.DragStartBehavior>? $drawerDragStartBehavior,
    // Associate with extendBody
    Stream<bool>? $extendBody,
    // Associate with extendBodyBehindAppBar
    Stream<bool>? $extendBodyBehindAppBar,
    // Associate with drawerScrimColor
    Stream<ui.Color?>? $drawerScrimColor,
    // Associate with drawerEdgeDragWidth
    Stream<double?>? $drawerEdgeDragWidth,
    // Associate with drawerEnableOpenDragGesture
    Stream<bool>? $drawerEnableOpenDragGesture,
    // Associate with endDrawerEnableOpenDragGesture
    Stream<bool>? $endDrawerEnableOpenDragGesture,
    // Associate with restorationId
    Stream<String?>? $restorationId,
  }) : super(
          Argument(
            {
              'key': key,
              'appBar': appBar,
              'body': body,
              'floatingActionButton': floatingActionButton,
              'floatingActionButtonLocation': floatingActionButtonLocation,
              'floatingActionButtonAnimator': floatingActionButtonAnimator,
              'persistentFooterButtons': persistentFooterButtons,
              'persistentFooterAlignment': persistentFooterAlignment,
              'drawer': drawer,
              'onDrawerChanged': onDrawerChanged,
              'endDrawer': endDrawer,
              'onEndDrawerChanged': onEndDrawerChanged,
              'bottomNavigationBar': bottomNavigationBar,
              'bottomSheet': bottomSheet,
              'backgroundColor': backgroundColor,
              'resizeToAvoidBottomInset': resizeToAvoidBottomInset,
              'primary': primary,
              'drawerDragStartBehavior': drawerDragStartBehavior,
              'extendBody': extendBody,
              'extendBodyBehindAppBar': extendBodyBehindAppBar,
              'drawerScrimColor': drawerScrimColor,
              'drawerEdgeDragWidth': drawerEdgeDragWidth,
              'drawerEnableOpenDragGesture': drawerEnableOpenDragGesture,
              'endDrawerEnableOpenDragGesture': endDrawerEnableOpenDragGesture,
              'restorationId': restorationId,
            },
            stream: {
              'key': $key,
              'appBar': $appBar,
              'body': $body,
              'floatingActionButton': $floatingActionButton,
              'floatingActionButtonLocation': $floatingActionButtonLocation,
              'floatingActionButtonAnimator': $floatingActionButtonAnimator,
              'persistentFooterButtons': $persistentFooterButtons,
              'persistentFooterAlignment': $persistentFooterAlignment,
              'drawer': $drawer,
              'onDrawerChanged': $onDrawerChanged,
              'endDrawer': $endDrawer,
              'onEndDrawerChanged': $onEndDrawerChanged,
              'bottomNavigationBar': $bottomNavigationBar,
              'bottomSheet': $bottomSheet,
              'backgroundColor': $backgroundColor,
              'resizeToAvoidBottomInset': $resizeToAvoidBottomInset,
              'primary': $primary,
              'drawerDragStartBehavior': $drawerDragStartBehavior,
              'extendBody': $extendBody,
              'extendBodyBehindAppBar': $extendBodyBehindAppBar,
              'drawerScrimColor': $drawerScrimColor,
              'drawerEdgeDragWidth': $drawerEdgeDragWidth,
              'drawerEnableOpenDragGesture': $drawerEnableOpenDragGesture,
              'endDrawerEnableOpenDragGesture': $endDrawerEnableOpenDragGesture,
              'restorationId': $restorationId,
            },
          ),
          builder: (args) => _i1.Scaffold(
            key: args('key'),
            appBar: args('appBar'),
            body: args('body'),
            floatingActionButton: args('floatingActionButton'),
            floatingActionButtonLocation: args('floatingActionButtonLocation'),
            floatingActionButtonAnimator: args('floatingActionButtonAnimator'),
            persistentFooterButtons: args('persistentFooterButtons'),
            persistentFooterAlignment: args('persistentFooterAlignment'),
            drawer: args('drawer'),
            onDrawerChanged: args('onDrawerChanged'),
            endDrawer: args('endDrawer'),
            onEndDrawerChanged: args('onEndDrawerChanged'),
            bottomNavigationBar: args('bottomNavigationBar'),
            bottomSheet: args('bottomSheet'),
            backgroundColor: args('backgroundColor'),
            resizeToAvoidBottomInset: args('resizeToAvoidBottomInset'),
            primary: args('primary'),
            drawerDragStartBehavior: args('drawerDragStartBehavior'),
            extendBody: args('extendBody'),
            extendBodyBehindAppBar: args('extendBodyBehindAppBar'),
            drawerScrimColor: args('drawerScrimColor'),
            drawerEdgeDragWidth: args('drawerEdgeDragWidth'),
            drawerEnableOpenDragGesture: args('drawerEnableOpenDragGesture'),
            endDrawerEnableOpenDragGesture: args('endDrawerEnableOpenDragGesture'),
            restorationId: args('restorationId'),
          ),
        );
}
