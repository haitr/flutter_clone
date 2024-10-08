library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RawScrollbar extends Wrapper {
  @Goto(_i1.RawScrollbar.new)
  RawScrollbar(
    $ $config, {
    _i2.Key? key,
    required _i1.Widget child,
    _i1.ScrollController? controller,
    bool? thumbVisibility,
    _i3.OutlinedBorder? shape,
    ui.Radius? radius,
    double? thickness,
    ui.Color? thumbColor,
    double minThumbLength = _kMinThumbExtent,
    double? minOverscrollLength,
    bool? trackVisibility,
    ui.Radius? trackRadius,
    ui.Color? trackColor,
    ui.Color? trackBorderColor,
    Duration fadeDuration = _kScrollbarFadeDuration,
    Duration timeToFade = _kScrollbarTimeToFade,
    Duration pressDuration = Duration.zero,
    _i1.ScrollNotificationPredicate notificationPredicate = _i1.defaultScrollNotificationPredicate,
    bool? interactive,
    _i1.ScrollbarOrientation? scrollbarOrientation,
    double mainAxisMargin = 0.0,
    double crossAxisMargin = 0.0,
    _i3.EdgeInsets? padding,
  }) : super(
          Argument({
            #key: key,
            #child: child,
            #controller: controller,
            #thumbVisibility: thumbVisibility,
            #shape: shape,
            #radius: radius,
            #thickness: thickness,
            #thumbColor: thumbColor,
            #minThumbLength: minThumbLength,
            #minOverscrollLength: minOverscrollLength,
            #trackVisibility: trackVisibility,
            #trackRadius: trackRadius,
            #trackColor: trackColor,
            #trackBorderColor: trackBorderColor,
            #fadeDuration: fadeDuration,
            #timeToFade: timeToFade,
            #pressDuration: pressDuration,
            #notificationPredicate: notificationPredicate,
            #interactive: interactive,
            #scrollbarOrientation: scrollbarOrientation,
            #mainAxisMargin: mainAxisMargin,
            #crossAxisMargin: crossAxisMargin,
            #padding: padding,
          }),
          builder: (args) => _i1.RawScrollbar(
            key: args(#key),
            child: args(#child),
            controller: args(#controller),
            thumbVisibility: args(#thumbVisibility),
            shape: args(#shape),
            radius: args(#radius),
            thickness: args(#thickness),
            thumbColor: args(#thumbColor),
            minThumbLength: args(#minThumbLength),
            minOverscrollLength: args(#minOverscrollLength),
            trackVisibility: args(#trackVisibility),
            trackRadius: args(#trackRadius),
            trackColor: args(#trackColor),
            trackBorderColor: args(#trackBorderColor),
            fadeDuration: args(#fadeDuration),
            timeToFade: args(#timeToFade),
            pressDuration: args(#pressDuration),
            notificationPredicate: args(#notificationPredicate),
            interactive: args(#interactive),
            scrollbarOrientation: args(#scrollbarOrientation),
            mainAxisMargin: args(#mainAxisMargin),
            crossAxisMargin: args(#crossAxisMargin),
            padding: args(#padding),
          ),
        );
}

const double _kMinThumbExtent = 18.0;
const Duration _kScrollbarFadeDuration = Duration(milliseconds: 250);
const Duration _kScrollbarTimeToFade = Duration(milliseconds: 1200);
