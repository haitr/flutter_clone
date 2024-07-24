library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/rendering.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class TapRegionSurface extends Wrapper {
  @Goto(_i1.TapRegionSurface.new)
  TapRegionSurface({
    _i2.Key? key,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget>? $child,
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
          builder: (args) => _i1.TapRegionSurface(
            key: args('key'),
            child: args('child'),
          ),
        );
}

final class TapRegion extends Wrapper {
  @Goto(_i1.TapRegion.new)
  TapRegion({
    _i2.Key? key,
    required _i1.Widget? child,
    bool enabled = true,
    _i3.HitTestBehavior behavior = _i3.HitTestBehavior.deferToChild,
    _i1.TapRegionCallback? onTapOutside,
    _i1.TapRegionCallback? onTapInside,
    Object? groupId,
    bool consumeOutsideTaps = false,
    String? debugLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with behavior
    Stream<_i3.HitTestBehavior>? $behavior,
    // Associate with onTapOutside
    Stream<_i1.TapRegionCallback?>? $onTapOutside,
    // Associate with onTapInside
    Stream<_i1.TapRegionCallback?>? $onTapInside,
    // Associate with groupId
    Stream<Object?>? $groupId,
    // Associate with consumeOutsideTaps
    Stream<bool>? $consumeOutsideTaps,
    // Associate with debugLabel
    Stream<String?>? $debugLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'enabled': enabled,
              'behavior': behavior,
              'onTapOutside': onTapOutside,
              'onTapInside': onTapInside,
              'groupId': groupId,
              'consumeOutsideTaps': consumeOutsideTaps,
              'debugLabel': debugLabel,
            },
            stream: {
              'key': $key,
              'child': $child,
              'enabled': $enabled,
              'behavior': $behavior,
              'onTapOutside': $onTapOutside,
              'onTapInside': $onTapInside,
              'groupId': $groupId,
              'consumeOutsideTaps': $consumeOutsideTaps,
              'debugLabel': $debugLabel,
            },
          ),
          builder: (args) => _i1.TapRegion(
            key: args('key'),
            child: args('child'),
            enabled: args('enabled'),
            behavior: args('behavior'),
            onTapOutside: args('onTapOutside'),
            onTapInside: args('onTapInside'),
            groupId: args('groupId'),
            consumeOutsideTaps: args('consumeOutsideTaps'),
            debugLabel: args('debugLabel'),
          ),
        );
}

final class TextFieldTapRegion extends Wrapper {
  @Goto(_i1.TextFieldTapRegion.new)
  TextFieldTapRegion({
    _i2.Key? key,
    required _i1.Widget? child,
    bool enabled = true,
    _i1.TapRegionCallback? onTapOutside,
    _i1.TapRegionCallback? onTapInside,
    bool consumeOutsideTaps = false,
    String? debugLabel,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with child
    Stream<_i1.Widget?>? $child,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with onTapOutside
    Stream<_i1.TapRegionCallback?>? $onTapOutside,
    // Associate with onTapInside
    Stream<_i1.TapRegionCallback?>? $onTapInside,
    // Associate with consumeOutsideTaps
    Stream<bool>? $consumeOutsideTaps,
    // Associate with debugLabel
    Stream<String?>? $debugLabel,
  }) : super(
          Argument(
            {
              'key': key,
              'child': child,
              'enabled': enabled,
              'onTapOutside': onTapOutside,
              'onTapInside': onTapInside,
              'consumeOutsideTaps': consumeOutsideTaps,
              'debugLabel': debugLabel,
            },
            stream: {
              'key': $key,
              'child': $child,
              'enabled': $enabled,
              'onTapOutside': $onTapOutside,
              'onTapInside': $onTapInside,
              'consumeOutsideTaps': $consumeOutsideTaps,
              'debugLabel': $debugLabel,
            },
          ),
          builder: (args) => _i1.TextFieldTapRegion(
            key: args('key'),
            child: args('child'),
            enabled: args('enabled'),
            onTapOutside: args('onTapOutside'),
            onTapInside: args('onTapInside'),
            consumeOutsideTaps: args('consumeOutsideTaps'),
            debugLabel: args('debugLabel'),
          ),
        );
}
