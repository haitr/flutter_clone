library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Shortcuts extends Wrapper {
  @Goto(_i1.Shortcuts.new)
  Shortcuts(
    $ $config, {
    _i2.Key? key,
    required Map<_i1.ShortcutActivator, _i1.Intent> shortcuts,
    required _i1.Widget child,
    String? debugLabel,
  }) : super(
          Argument({
            #key: key,
            #shortcuts: shortcuts,
            #child: child,
            #debugLabel: debugLabel,
          }),
          builder: (args) => _i1.Shortcuts(
            key: args(#key),
            shortcuts: args(#shortcuts),
            child: args(#child),
            debugLabel: args(#debugLabel),
          ),
        );

  @Goto(_i1.Shortcuts.manager)
  Shortcuts.manager(
    $ $config, {
    _i2.Key? key,
    required _i1.ShortcutManager manager,
    required _i1.Widget child,
    String? debugLabel,
  }) : super(
          Argument({
            #key: key,
            #manager: manager,
            #child: child,
            #debugLabel: debugLabel,
          }),
          builder: (args) => _i1.Shortcuts.manager(
            key: args(#key),
            manager: args(#manager),
            child: args(#child),
            debugLabel: args(#debugLabel),
          ),
        );
}

final class CallbackShortcuts extends Wrapper {
  @Goto(_i1.CallbackShortcuts.new)
  CallbackShortcuts(
    $ $config, {
    _i2.Key? key,
    required Map<_i1.ShortcutActivator, ui.VoidCallback> bindings,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #bindings: bindings,
            #child: child,
          }),
          builder: (args) => _i1.CallbackShortcuts(
            key: args(#key),
            bindings: args(#bindings),
            child: args(#child),
          ),
        );
}

final class ShortcutRegistrar extends Wrapper {
  @Goto(_i1.ShortcutRegistrar.new)
  ShortcutRegistrar(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.ShortcutRegistrar(
            key: args(#key),
            child: args(#child),
          ),
        );
}
