library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class MediaQuery extends Wrapper {
  @Goto(_i1.MediaQuery.new)
  MediaQuery({
    _i2.Key? key,
    required _i1.MediaQueryData data,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with data
    Stream<_i1.MediaQueryData>? $data,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'data': data,
              'child': child,
            },
            stream: {
              'key': $key,
              'data': $data,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MediaQuery(
            key: args('key'),
            data: args('data'),
            child: args('child'),
          ),
        );

  @Goto(_i1.MediaQuery.removePadding)
  MediaQuery.removePadding({
    _i2.Key? key,
    required _i1.BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with context
    Stream<_i1.BuildContext>? $context,
    // Associate with removeLeft
    Stream<bool>? $removeLeft,
    // Associate with removeTop
    Stream<bool>? $removeTop,
    // Associate with removeRight
    Stream<bool>? $removeRight,
    // Associate with removeBottom
    Stream<bool>? $removeBottom,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'context': context,
              'removeLeft': removeLeft,
              'removeTop': removeTop,
              'removeRight': removeRight,
              'removeBottom': removeBottom,
              'child': child,
            },
            stream: {
              'key': $key,
              'context': $context,
              'removeLeft': $removeLeft,
              'removeTop': $removeTop,
              'removeRight': $removeRight,
              'removeBottom': $removeBottom,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MediaQuery.removePadding(
            key: args('key'),
            context: args('context'),
            removeLeft: args('removeLeft'),
            removeTop: args('removeTop'),
            removeRight: args('removeRight'),
            removeBottom: args('removeBottom'),
            child: args('child'),
          ),
        );

  @Goto(_i1.MediaQuery.removeViewInsets)
  MediaQuery.removeViewInsets({
    _i2.Key? key,
    required _i1.BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with context
    Stream<_i1.BuildContext>? $context,
    // Associate with removeLeft
    Stream<bool>? $removeLeft,
    // Associate with removeTop
    Stream<bool>? $removeTop,
    // Associate with removeRight
    Stream<bool>? $removeRight,
    // Associate with removeBottom
    Stream<bool>? $removeBottom,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'context': context,
              'removeLeft': removeLeft,
              'removeTop': removeTop,
              'removeRight': removeRight,
              'removeBottom': removeBottom,
              'child': child,
            },
            stream: {
              'key': $key,
              'context': $context,
              'removeLeft': $removeLeft,
              'removeTop': $removeTop,
              'removeRight': $removeRight,
              'removeBottom': $removeBottom,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MediaQuery.removeViewInsets(
            key: args('key'),
            context: args('context'),
            removeLeft: args('removeLeft'),
            removeTop: args('removeTop'),
            removeRight: args('removeRight'),
            removeBottom: args('removeBottom'),
            child: args('child'),
          ),
        );

  @Goto(_i1.MediaQuery.removeViewPadding)
  MediaQuery.removeViewPadding({
    _i2.Key? key,
    required _i1.BuildContext context,
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with context
    Stream<_i1.BuildContext>? $context,
    // Associate with removeLeft
    Stream<bool>? $removeLeft,
    // Associate with removeTop
    Stream<bool>? $removeTop,
    // Associate with removeRight
    Stream<bool>? $removeRight,
    // Associate with removeBottom
    Stream<bool>? $removeBottom,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'context': context,
              'removeLeft': removeLeft,
              'removeTop': removeTop,
              'removeRight': removeRight,
              'removeBottom': removeBottom,
              'child': child,
            },
            stream: {
              'key': $key,
              'context': $context,
              'removeLeft': $removeLeft,
              'removeTop': $removeTop,
              'removeRight': $removeRight,
              'removeBottom': $removeBottom,
              'child': $child,
            },
          ),
          builder: (args) => _i1.MediaQuery.removeViewPadding(
            key: args('key'),
            context: args('context'),
            removeLeft: args('removeLeft'),
            removeTop: args('removeTop'),
            removeRight: args('removeRight'),
            removeBottom: args('removeBottom'),
            child: args('child'),
          ),
        );
}
