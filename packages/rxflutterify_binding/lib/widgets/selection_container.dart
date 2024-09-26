library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class SelectionRegistrarScope extends Wrapper {
  @Goto(_i1.SelectionRegistrarScope.new)
  SelectionRegistrarScope(
    $ $config, {
    _i2.Key? key,
    required _i3.SelectionRegistrar registrar,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #registrar: registrar,
            #child: child,
          }),
          builder: (args) => _i1.SelectionRegistrarScope(
            key: args(#key),
            registrar: args(#registrar),
            child: args(#child),
          ),
        );
}

final class SelectionContainer extends Wrapper {
  @Goto(_i1.SelectionContainer.new)
  SelectionContainer(
    $ $config, {
    _i2.Key? key,
    _i3.SelectionRegistrar? registrar,
    required _i1.SelectionContainerDelegate delegate,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #registrar: registrar,
            #delegate: delegate,
            #child: child,
          }),
          builder: (args) => _i1.SelectionContainer(
            key: args(#key),
            registrar: args(#registrar),
            delegate: args(#delegate),
            child: args(#child),
          ),
        );

  @Goto(_i1.SelectionContainer.disabled)
  SelectionContainer.disabled(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #child: child,
          }),
          builder: (args) => _i1.SelectionContainer.disabled(
            key: args(#key),
            child: args(#child),
          ),
        );
}
