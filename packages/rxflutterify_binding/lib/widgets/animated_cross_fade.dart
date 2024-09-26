library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/animation.dart' as _i3;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class AnimatedCrossFade extends Wrapper {
  @Goto(_i1.AnimatedCrossFade.new)
  AnimatedCrossFade(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget firstChild,
    required _i1.Widget secondChild,
    _i3.Curve firstCurve = _i3.Curves.linear,
    _i3.Curve secondCurve = _i3.Curves.linear,
    _i3.Curve sizeCurve = _i3.Curves.linear,
    _i4.AlignmentGeometry alignment = _i4.Alignment.topCenter,
    required _i1.CrossFadeState crossFadeState,
    required Duration duration,
    Duration? reverseDuration,
    _i1.AnimatedCrossFadeBuilder layoutBuilder = _i1.AnimatedCrossFade.defaultLayoutBuilder,
    bool excludeBottomFocus = true,
  }) : super(
          Argument({
            #key: key,
            #firstChild: firstChild,
            #secondChild: secondChild,
            #firstCurve: firstCurve,
            #secondCurve: secondCurve,
            #sizeCurve: sizeCurve,
            #alignment: alignment,
            #crossFadeState: crossFadeState,
            #duration: duration,
            #reverseDuration: reverseDuration,
            #layoutBuilder: layoutBuilder,
            #excludeBottomFocus: excludeBottomFocus,
          }),
          builder: (args) => _i1.AnimatedCrossFade(
            key: args(#key),
            firstChild: args(#firstChild),
            secondChild: args(#secondChild),
            firstCurve: args(#firstCurve),
            secondCurve: args(#secondCurve),
            sizeCurve: args(#sizeCurve),
            alignment: args(#alignment),
            crossFadeState: args(#crossFadeState),
            duration: args(#duration),
            reverseDuration: args(#reverseDuration),
            layoutBuilder: args(#layoutBuilder),
            excludeBottomFocus: args(#excludeBottomFocus),
          ),
        );
}
