library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class FocusTraversalGroup extends Wrapper {
  @Goto(_i1.FocusTraversalGroup.new)
  FocusTraversalGroup({
    _i2.Key? key,
    _i1.FocusTraversalPolicy? policy,
    bool descendantsAreFocusable = true,
    bool descendantsAreTraversable = true,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with policy
    Stream<_i1.FocusTraversalPolicy?>? $policy,
    // Associate with descendantsAreFocusable
    Stream<bool>? $descendantsAreFocusable,
    // Associate with descendantsAreTraversable
    Stream<bool>? $descendantsAreTraversable,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'policy': policy,
              'descendantsAreFocusable': descendantsAreFocusable,
              'descendantsAreTraversable': descendantsAreTraversable,
              'child': child,
            },
            stream: {
              'key': $key,
              'policy': $policy,
              'descendantsAreFocusable': $descendantsAreFocusable,
              'descendantsAreTraversable': $descendantsAreTraversable,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FocusTraversalGroup(
            key: args('key'),
            policy: args('policy'),
            descendantsAreFocusable: args('descendantsAreFocusable'),
            descendantsAreTraversable: args('descendantsAreTraversable'),
            child: args('child'),
          ),
        );
}

final class FocusTraversalOrder extends Wrapper {
  @Goto(_i1.FocusTraversalOrder.new)
  FocusTraversalOrder({
    _i2.Key? key,
    required _i1.FocusOrder order,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with order
    Stream<_i1.FocusOrder>? $order,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'order': order,
              'child': child,
            },
            stream: {
              'key': $key,
              'order': $order,
              'child': $child,
            },
          ),
          builder: (args) => _i1.FocusTraversalOrder(
            key: args('key'),
            order: args('order'),
            child: args('child'),
          ),
        );
}

final class ExcludeFocusTraversal extends Wrapper {
  @Goto(_i1.ExcludeFocusTraversal.new)
  ExcludeFocusTraversal({
    _i2.Key? key,
    bool excluding = true,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with excluding
    Stream<bool>? $excluding,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'excluding': excluding,
              'child': child,
            },
            stream: {
              'key': $key,
              'excluding': $excluding,
              'child': $child,
            },
          ),
          builder: (args) => _i1.ExcludeFocusTraversal(
            key: args('key'),
            excluding: args('excluding'),
            child: args('child'),
          ),
        );
}
