library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class MediaQuery extends Wrapper {
  @Goto(_i1.MediaQuery.new)
  MediaQuery(
    $ $config, {
    _i2.Key? key,
    required _i1.MediaQueryData data,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #data: data,
            #child: child,
          }),
          builder: (args) => _i1.MediaQuery(
            key: args(#key),
            data: args(#data),
            child: args(#child),
          ),
        );

  @Goto(_i1.MediaQuery.removePadding)
  MediaQuery.removePadding(
    $ $config, {
    _i2.Key? key,
    required _i1.BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #context: context,
            #removeLeft: removeLeft,
            #removeTop: removeTop,
            #removeRight: removeRight,
            #removeBottom: removeBottom,
            #child: child,
          }),
          builder: (args) => _i1.MediaQuery.removePadding(
            key: args(#key),
            context: args(#context),
            removeLeft: args(#removeLeft),
            removeTop: args(#removeTop),
            removeRight: args(#removeRight),
            removeBottom: args(#removeBottom),
            child: args(#child),
          ),
        );

  @Goto(_i1.MediaQuery.removeViewInsets)
  MediaQuery.removeViewInsets(
    $ $config, {
    _i2.Key? key,
    required _i1.BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #context: context,
            #removeLeft: removeLeft,
            #removeTop: removeTop,
            #removeRight: removeRight,
            #removeBottom: removeBottom,
            #child: child,
          }),
          builder: (args) => _i1.MediaQuery.removeViewInsets(
            key: args(#key),
            context: args(#context),
            removeLeft: args(#removeLeft),
            removeTop: args(#removeTop),
            removeRight: args(#removeRight),
            removeBottom: args(#removeBottom),
            child: args(#child),
          ),
        );

  @Goto(_i1.MediaQuery.removeViewPadding)
  MediaQuery.removeViewPadding(
    $ $config, {
    _i2.Key? key,
    required _i1.BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    required _i1.Widget child,
  }) : super(
          Argument({
            #key: key,
            #context: context,
            #removeLeft: removeLeft,
            #removeTop: removeTop,
            #removeRight: removeRight,
            #removeBottom: removeBottom,
            #child: child,
          }),
          builder: (args) => _i1.MediaQuery.removeViewPadding(
            key: args(#key),
            context: args(#context),
            removeLeft: args(#removeLeft),
            removeTop: args(#removeTop),
            removeRight: args(#removeRight),
            removeBottom: args(#removeBottom),
            child: args(#child),
          ),
        );
}
