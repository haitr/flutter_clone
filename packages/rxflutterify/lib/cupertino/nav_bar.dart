library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class CupertinoNavigationBarBackButton extends Wrapper {
  @Goto(_i1.CupertinoNavigationBarBackButton.new)
  CupertinoNavigationBarBackButton(
    $ $config, {
    _i2.Key? key,
    ui.Color? color,
    String? previousPageTitle,
    ui.VoidCallback? onPressed,
  }) : super(
          Argument({
            #key: key,
            #color: color,
            #previousPageTitle: previousPageTitle,
            #onPressed: onPressed,
          }),
          builder: (args) => _i1.CupertinoNavigationBarBackButton(
            key: args(#key),
            color: args(#color),
            previousPageTitle: args(#previousPageTitle),
            onPressed: args(#onPressed),
          ),
        );
}

final class CupertinoSliverNavigationBar extends Wrapper {
  @Goto(_i1.CupertinoSliverNavigationBar.new)
  CupertinoSliverNavigationBar(
    $ $config, {
    _i2.Key? key,
    _i3.Widget? largeTitle,
    _i3.Widget? leading,
    bool automaticallyImplyLeading = true,
    bool automaticallyImplyTitle = true,
    bool alwaysShowMiddle = true,
    String? previousPageTitle,
    _i3.Widget? middle,
    _i3.Widget? trailing,
    _i4.Border? border = _kDefaultNavBarBorder,
    ui.Color? backgroundColor,
    ui.Brightness? brightness,
    _i4.EdgeInsetsDirectional? padding,
    bool transitionBetweenRoutes = true,
    Object heroTag = _defaultHeroTag,
    bool stretch = false,
  }) : super(
          Argument({
            #key: key,
            #largeTitle: largeTitle,
            #leading: leading,
            #automaticallyImplyLeading: automaticallyImplyLeading,
            #automaticallyImplyTitle: automaticallyImplyTitle,
            #alwaysShowMiddle: alwaysShowMiddle,
            #previousPageTitle: previousPageTitle,
            #middle: middle,
            #trailing: trailing,
            #border: border,
            #backgroundColor: backgroundColor,
            #brightness: brightness,
            #padding: padding,
            #transitionBetweenRoutes: transitionBetweenRoutes,
            #heroTag: heroTag,
            #stretch: stretch,
          }),
          builder: (args) => _i1.CupertinoSliverNavigationBar(
            key: args(#key),
            largeTitle: args(#largeTitle),
            leading: args(#leading),
            automaticallyImplyLeading: args(#automaticallyImplyLeading),
            automaticallyImplyTitle: args(#automaticallyImplyTitle),
            alwaysShowMiddle: args(#alwaysShowMiddle),
            previousPageTitle: args(#previousPageTitle),
            middle: args(#middle),
            trailing: args(#trailing),
            border: args(#border),
            backgroundColor: args(#backgroundColor),
            brightness: args(#brightness),
            padding: args(#padding),
            transitionBetweenRoutes: args(#transitionBetweenRoutes),
            heroTag: args(#heroTag),
            stretch: args(#stretch),
          ),
        );
}

final class CupertinoNavigationBar extends Wrapper {
  @Goto(_i1.CupertinoNavigationBar.new)
  CupertinoNavigationBar(
    $ $config, {
    _i2.Key? key,
    _i3.Widget? leading,
    bool automaticallyImplyLeading = true,
    bool automaticallyImplyMiddle = true,
    String? previousPageTitle,
    _i3.Widget? middle,
    _i3.Widget? trailing,
    _i4.Border? border = _kDefaultNavBarBorder,
    ui.Color? backgroundColor,
    ui.Brightness? brightness,
    _i4.EdgeInsetsDirectional? padding,
    bool transitionBetweenRoutes = true,
    Object heroTag = _defaultHeroTag,
  }) : super(
          Argument({
            #key: key,
            #leading: leading,
            #automaticallyImplyLeading: automaticallyImplyLeading,
            #automaticallyImplyMiddle: automaticallyImplyMiddle,
            #previousPageTitle: previousPageTitle,
            #middle: middle,
            #trailing: trailing,
            #border: border,
            #backgroundColor: backgroundColor,
            #brightness: brightness,
            #padding: padding,
            #transitionBetweenRoutes: transitionBetweenRoutes,
            #heroTag: heroTag,
          }),
          builder: (args) => _i1.CupertinoNavigationBar(
            key: args(#key),
            leading: args(#leading),
            automaticallyImplyLeading: args(#automaticallyImplyLeading),
            automaticallyImplyMiddle: args(#automaticallyImplyMiddle),
            previousPageTitle: args(#previousPageTitle),
            middle: args(#middle),
            trailing: args(#trailing),
            border: args(#border),
            backgroundColor: args(#backgroundColor),
            brightness: args(#brightness),
            padding: args(#padding),
            transitionBetweenRoutes: args(#transitionBetweenRoutes),
            heroTag: args(#heroTag),
          ),
        );
}

const _i4.Border _kDefaultNavBarBorder = _i4.Border(
    bottom: _i4.BorderSide(
  color: _kDefaultNavBarBorderColor,
  width: 0.0,
));
const _HeroTag _defaultHeroTag = _HeroTag(null);
const ui.Color _kDefaultNavBarBorderColor = ui.Color(0x4D000000);

class _HeroTag {
  const _HeroTag(this.navigator);
  final _i3.NavigatorState? navigator;
  @override
  String toString() => 'Default Hero tag for Cupertino navigation bars with navigator $navigator';
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is _HeroTag && other.navigator == navigator;
  }

  @override
  int get hashCode => identityHashCode(navigator);
}
