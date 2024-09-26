library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class SliverAppBar extends Wrapper {
  @Goto(_i1.SliverAppBar.new)
  SliverAppBar({
    _i2.Key? key,
    _i3.Widget? leading,
    bool automaticallyImplyLeading = true,
    _i3.Widget? title,
    List<_i3.Widget>? actions,
    _i3.Widget? flexibleSpace,
    _i3.PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    bool forceElevated = false,
    ui.Color? backgroundColor,
    ui.Color? foregroundColor,
    _i3.IconThemeData? iconTheme,
    _i3.IconThemeData? actionsIconTheme,
    bool primary = true,
    bool? centerTitle,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double? collapsedHeight,
    double? expandedHeight,
    bool floating = false,
    bool pinned = false,
    bool snap = false,
    bool stretch = false,
    double stretchTriggerOffset = 100.0,
    _i2.AsyncCallback? onStretchTrigger,
    _i4.ShapeBorder? shape,
    double toolbarHeight = _i1.kToolbarHeight,
    double? leadingWidth,
    _i4.TextStyle? toolbarTextStyle,
    _i4.TextStyle? titleTextStyle,
    _i5.SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    ui.Clip? clipBehavior,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with automaticallyImplyLeading
    Stream<bool>? $automaticallyImplyLeading,
    // Associate with title
    Stream<_i3.Widget?>? $title,
    // Associate with actions
    Stream<List<_i3.Widget>?>? $actions,
    // Associate with flexibleSpace
    Stream<_i3.Widget?>? $flexibleSpace,
    // Associate with bottom
    Stream<_i3.PreferredSizeWidget?>? $bottom,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with scrolledUnderElevation
    Stream<double?>? $scrolledUnderElevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with forceElevated
    Stream<bool>? $forceElevated,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with iconTheme
    Stream<_i3.IconThemeData?>? $iconTheme,
    // Associate with actionsIconTheme
    Stream<_i3.IconThemeData?>? $actionsIconTheme,
    // Associate with primary
    Stream<bool>? $primary,
    // Associate with centerTitle
    Stream<bool?>? $centerTitle,
    // Associate with excludeHeaderSemantics
    Stream<bool>? $excludeHeaderSemantics,
    // Associate with titleSpacing
    Stream<double?>? $titleSpacing,
    // Associate with collapsedHeight
    Stream<double?>? $collapsedHeight,
    // Associate with expandedHeight
    Stream<double?>? $expandedHeight,
    // Associate with floating
    Stream<bool>? $floating,
    // Associate with pinned
    Stream<bool>? $pinned,
    // Associate with snap
    Stream<bool>? $snap,
    // Associate with stretch
    Stream<bool>? $stretch,
    // Associate with stretchTriggerOffset
    Stream<double>? $stretchTriggerOffset,
    // Associate with onStretchTrigger
    Stream<_i2.AsyncCallback?>? $onStretchTrigger,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with toolbarHeight
    Stream<double>? $toolbarHeight,
    // Associate with leadingWidth
    Stream<double?>? $leadingWidth,
    // Associate with toolbarTextStyle
    Stream<_i4.TextStyle?>? $toolbarTextStyle,
    // Associate with titleTextStyle
    Stream<_i4.TextStyle?>? $titleTextStyle,
    // Associate with systemOverlayStyle
    Stream<_i5.SystemUiOverlayStyle?>? $systemOverlayStyle,
    // Associate with forceMaterialTransparency
    Stream<bool>? $forceMaterialTransparency,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'leading': leading,
              'automaticallyImplyLeading': automaticallyImplyLeading,
              'title': title,
              'actions': actions,
              'flexibleSpace': flexibleSpace,
              'bottom': bottom,
              'elevation': elevation,
              'scrolledUnderElevation': scrolledUnderElevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'forceElevated': forceElevated,
              'backgroundColor': backgroundColor,
              'foregroundColor': foregroundColor,
              'iconTheme': iconTheme,
              'actionsIconTheme': actionsIconTheme,
              'primary': primary,
              'centerTitle': centerTitle,
              'excludeHeaderSemantics': excludeHeaderSemantics,
              'titleSpacing': titleSpacing,
              'collapsedHeight': collapsedHeight,
              'expandedHeight': expandedHeight,
              'floating': floating,
              'pinned': pinned,
              'snap': snap,
              'stretch': stretch,
              'stretchTriggerOffset': stretchTriggerOffset,
              'onStretchTrigger': onStretchTrigger,
              'shape': shape,
              'toolbarHeight': toolbarHeight,
              'leadingWidth': leadingWidth,
              'toolbarTextStyle': toolbarTextStyle,
              'titleTextStyle': titleTextStyle,
              'systemOverlayStyle': systemOverlayStyle,
              'forceMaterialTransparency': forceMaterialTransparency,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'leading': $leading,
              'automaticallyImplyLeading': $automaticallyImplyLeading,
              'title': $title,
              'actions': $actions,
              'flexibleSpace': $flexibleSpace,
              'bottom': $bottom,
              'elevation': $elevation,
              'scrolledUnderElevation': $scrolledUnderElevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'forceElevated': $forceElevated,
              'backgroundColor': $backgroundColor,
              'foregroundColor': $foregroundColor,
              'iconTheme': $iconTheme,
              'actionsIconTheme': $actionsIconTheme,
              'primary': $primary,
              'centerTitle': $centerTitle,
              'excludeHeaderSemantics': $excludeHeaderSemantics,
              'titleSpacing': $titleSpacing,
              'collapsedHeight': $collapsedHeight,
              'expandedHeight': $expandedHeight,
              'floating': $floating,
              'pinned': $pinned,
              'snap': $snap,
              'stretch': $stretch,
              'stretchTriggerOffset': $stretchTriggerOffset,
              'onStretchTrigger': $onStretchTrigger,
              'shape': $shape,
              'toolbarHeight': $toolbarHeight,
              'leadingWidth': $leadingWidth,
              'toolbarTextStyle': $toolbarTextStyle,
              'titleTextStyle': $titleTextStyle,
              'systemOverlayStyle': $systemOverlayStyle,
              'forceMaterialTransparency': $forceMaterialTransparency,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.SliverAppBar(
            key: args('key'),
            leading: args('leading'),
            automaticallyImplyLeading: args('automaticallyImplyLeading'),
            title: args('title'),
            actions: args('actions'),
            flexibleSpace: args('flexibleSpace'),
            bottom: args('bottom'),
            elevation: args('elevation'),
            scrolledUnderElevation: args('scrolledUnderElevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            forceElevated: args('forceElevated'),
            backgroundColor: args('backgroundColor'),
            foregroundColor: args('foregroundColor'),
            iconTheme: args('iconTheme'),
            actionsIconTheme: args('actionsIconTheme'),
            primary: args('primary'),
            centerTitle: args('centerTitle'),
            excludeHeaderSemantics: args('excludeHeaderSemantics'),
            titleSpacing: args('titleSpacing'),
            collapsedHeight: args('collapsedHeight'),
            expandedHeight: args('expandedHeight'),
            floating: args('floating'),
            pinned: args('pinned'),
            snap: args('snap'),
            stretch: args('stretch'),
            stretchTriggerOffset: args('stretchTriggerOffset'),
            onStretchTrigger: args('onStretchTrigger'),
            shape: args('shape'),
            toolbarHeight: args('toolbarHeight'),
            leadingWidth: args('leadingWidth'),
            toolbarTextStyle: args('toolbarTextStyle'),
            titleTextStyle: args('titleTextStyle'),
            systemOverlayStyle: args('systemOverlayStyle'),
            forceMaterialTransparency: args('forceMaterialTransparency'),
            clipBehavior: args('clipBehavior'),
          ),
        );

  @Goto(_i1.SliverAppBar.medium)
  SliverAppBar.medium({
    _i2.Key? key,
    _i3.Widget? leading,
    bool automaticallyImplyLeading = true,
    _i3.Widget? title,
    List<_i3.Widget>? actions,
    _i3.Widget? flexibleSpace,
    _i3.PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    bool forceElevated = false,
    ui.Color? backgroundColor,
    ui.Color? foregroundColor,
    _i3.IconThemeData? iconTheme,
    _i3.IconThemeData? actionsIconTheme,
    bool primary = true,
    bool? centerTitle,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double? collapsedHeight,
    double? expandedHeight,
    bool floating = false,
    bool pinned = true,
    bool snap = false,
    bool stretch = false,
    double stretchTriggerOffset = 100.0,
    _i2.AsyncCallback? onStretchTrigger,
    _i4.ShapeBorder? shape,
    double toolbarHeight = _MediumScrollUnderFlexibleConfig.collapsedHeight,
    double? leadingWidth,
    _i4.TextStyle? toolbarTextStyle,
    _i4.TextStyle? titleTextStyle,
    _i5.SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    ui.Clip? clipBehavior,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with automaticallyImplyLeading
    Stream<bool>? $automaticallyImplyLeading,
    // Associate with title
    Stream<_i3.Widget?>? $title,
    // Associate with actions
    Stream<List<_i3.Widget>?>? $actions,
    // Associate with flexibleSpace
    Stream<_i3.Widget?>? $flexibleSpace,
    // Associate with bottom
    Stream<_i3.PreferredSizeWidget?>? $bottom,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with scrolledUnderElevation
    Stream<double?>? $scrolledUnderElevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with forceElevated
    Stream<bool>? $forceElevated,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with iconTheme
    Stream<_i3.IconThemeData?>? $iconTheme,
    // Associate with actionsIconTheme
    Stream<_i3.IconThemeData?>? $actionsIconTheme,
    // Associate with primary
    Stream<bool>? $primary,
    // Associate with centerTitle
    Stream<bool?>? $centerTitle,
    // Associate with excludeHeaderSemantics
    Stream<bool>? $excludeHeaderSemantics,
    // Associate with titleSpacing
    Stream<double?>? $titleSpacing,
    // Associate with collapsedHeight
    Stream<double?>? $collapsedHeight,
    // Associate with expandedHeight
    Stream<double?>? $expandedHeight,
    // Associate with floating
    Stream<bool>? $floating,
    // Associate with pinned
    Stream<bool>? $pinned,
    // Associate with snap
    Stream<bool>? $snap,
    // Associate with stretch
    Stream<bool>? $stretch,
    // Associate with stretchTriggerOffset
    Stream<double>? $stretchTriggerOffset,
    // Associate with onStretchTrigger
    Stream<_i2.AsyncCallback?>? $onStretchTrigger,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with toolbarHeight
    Stream<double>? $toolbarHeight,
    // Associate with leadingWidth
    Stream<double?>? $leadingWidth,
    // Associate with toolbarTextStyle
    Stream<_i4.TextStyle?>? $toolbarTextStyle,
    // Associate with titleTextStyle
    Stream<_i4.TextStyle?>? $titleTextStyle,
    // Associate with systemOverlayStyle
    Stream<_i5.SystemUiOverlayStyle?>? $systemOverlayStyle,
    // Associate with forceMaterialTransparency
    Stream<bool>? $forceMaterialTransparency,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'leading': leading,
              'automaticallyImplyLeading': automaticallyImplyLeading,
              'title': title,
              'actions': actions,
              'flexibleSpace': flexibleSpace,
              'bottom': bottom,
              'elevation': elevation,
              'scrolledUnderElevation': scrolledUnderElevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'forceElevated': forceElevated,
              'backgroundColor': backgroundColor,
              'foregroundColor': foregroundColor,
              'iconTheme': iconTheme,
              'actionsIconTheme': actionsIconTheme,
              'primary': primary,
              'centerTitle': centerTitle,
              'excludeHeaderSemantics': excludeHeaderSemantics,
              'titleSpacing': titleSpacing,
              'collapsedHeight': collapsedHeight,
              'expandedHeight': expandedHeight,
              'floating': floating,
              'pinned': pinned,
              'snap': snap,
              'stretch': stretch,
              'stretchTriggerOffset': stretchTriggerOffset,
              'onStretchTrigger': onStretchTrigger,
              'shape': shape,
              'toolbarHeight': toolbarHeight,
              'leadingWidth': leadingWidth,
              'toolbarTextStyle': toolbarTextStyle,
              'titleTextStyle': titleTextStyle,
              'systemOverlayStyle': systemOverlayStyle,
              'forceMaterialTransparency': forceMaterialTransparency,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'leading': $leading,
              'automaticallyImplyLeading': $automaticallyImplyLeading,
              'title': $title,
              'actions': $actions,
              'flexibleSpace': $flexibleSpace,
              'bottom': $bottom,
              'elevation': $elevation,
              'scrolledUnderElevation': $scrolledUnderElevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'forceElevated': $forceElevated,
              'backgroundColor': $backgroundColor,
              'foregroundColor': $foregroundColor,
              'iconTheme': $iconTheme,
              'actionsIconTheme': $actionsIconTheme,
              'primary': $primary,
              'centerTitle': $centerTitle,
              'excludeHeaderSemantics': $excludeHeaderSemantics,
              'titleSpacing': $titleSpacing,
              'collapsedHeight': $collapsedHeight,
              'expandedHeight': $expandedHeight,
              'floating': $floating,
              'pinned': $pinned,
              'snap': $snap,
              'stretch': $stretch,
              'stretchTriggerOffset': $stretchTriggerOffset,
              'onStretchTrigger': $onStretchTrigger,
              'shape': $shape,
              'toolbarHeight': $toolbarHeight,
              'leadingWidth': $leadingWidth,
              'toolbarTextStyle': $toolbarTextStyle,
              'titleTextStyle': $titleTextStyle,
              'systemOverlayStyle': $systemOverlayStyle,
              'forceMaterialTransparency': $forceMaterialTransparency,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.SliverAppBar.medium(
            key: args('key'),
            leading: args('leading'),
            automaticallyImplyLeading: args('automaticallyImplyLeading'),
            title: args('title'),
            actions: args('actions'),
            flexibleSpace: args('flexibleSpace'),
            bottom: args('bottom'),
            elevation: args('elevation'),
            scrolledUnderElevation: args('scrolledUnderElevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            forceElevated: args('forceElevated'),
            backgroundColor: args('backgroundColor'),
            foregroundColor: args('foregroundColor'),
            iconTheme: args('iconTheme'),
            actionsIconTheme: args('actionsIconTheme'),
            primary: args('primary'),
            centerTitle: args('centerTitle'),
            excludeHeaderSemantics: args('excludeHeaderSemantics'),
            titleSpacing: args('titleSpacing'),
            collapsedHeight: args('collapsedHeight'),
            expandedHeight: args('expandedHeight'),
            floating: args('floating'),
            pinned: args('pinned'),
            snap: args('snap'),
            stretch: args('stretch'),
            stretchTriggerOffset: args('stretchTriggerOffset'),
            onStretchTrigger: args('onStretchTrigger'),
            shape: args('shape'),
            toolbarHeight: args('toolbarHeight'),
            leadingWidth: args('leadingWidth'),
            toolbarTextStyle: args('toolbarTextStyle'),
            titleTextStyle: args('titleTextStyle'),
            systemOverlayStyle: args('systemOverlayStyle'),
            forceMaterialTransparency: args('forceMaterialTransparency'),
            clipBehavior: args('clipBehavior'),
          ),
        );

  @Goto(_i1.SliverAppBar.large)
  SliverAppBar.large({
    _i2.Key? key,
    _i3.Widget? leading,
    bool automaticallyImplyLeading = true,
    _i3.Widget? title,
    List<_i3.Widget>? actions,
    _i3.Widget? flexibleSpace,
    _i3.PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    bool forceElevated = false,
    ui.Color? backgroundColor,
    ui.Color? foregroundColor,
    _i3.IconThemeData? iconTheme,
    _i3.IconThemeData? actionsIconTheme,
    bool primary = true,
    bool? centerTitle,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double? collapsedHeight,
    double? expandedHeight,
    bool floating = false,
    bool pinned = true,
    bool snap = false,
    bool stretch = false,
    double stretchTriggerOffset = 100.0,
    _i2.AsyncCallback? onStretchTrigger,
    _i4.ShapeBorder? shape,
    double toolbarHeight = _LargeScrollUnderFlexibleConfig.collapsedHeight,
    double? leadingWidth,
    _i4.TextStyle? toolbarTextStyle,
    _i4.TextStyle? titleTextStyle,
    _i5.SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    ui.Clip? clipBehavior,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with automaticallyImplyLeading
    Stream<bool>? $automaticallyImplyLeading,
    // Associate with title
    Stream<_i3.Widget?>? $title,
    // Associate with actions
    Stream<List<_i3.Widget>?>? $actions,
    // Associate with flexibleSpace
    Stream<_i3.Widget?>? $flexibleSpace,
    // Associate with bottom
    Stream<_i3.PreferredSizeWidget?>? $bottom,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with scrolledUnderElevation
    Stream<double?>? $scrolledUnderElevation,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with forceElevated
    Stream<bool>? $forceElevated,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with iconTheme
    Stream<_i3.IconThemeData?>? $iconTheme,
    // Associate with actionsIconTheme
    Stream<_i3.IconThemeData?>? $actionsIconTheme,
    // Associate with primary
    Stream<bool>? $primary,
    // Associate with centerTitle
    Stream<bool?>? $centerTitle,
    // Associate with excludeHeaderSemantics
    Stream<bool>? $excludeHeaderSemantics,
    // Associate with titleSpacing
    Stream<double?>? $titleSpacing,
    // Associate with collapsedHeight
    Stream<double?>? $collapsedHeight,
    // Associate with expandedHeight
    Stream<double?>? $expandedHeight,
    // Associate with floating
    Stream<bool>? $floating,
    // Associate with pinned
    Stream<bool>? $pinned,
    // Associate with snap
    Stream<bool>? $snap,
    // Associate with stretch
    Stream<bool>? $stretch,
    // Associate with stretchTriggerOffset
    Stream<double>? $stretchTriggerOffset,
    // Associate with onStretchTrigger
    Stream<_i2.AsyncCallback?>? $onStretchTrigger,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with toolbarHeight
    Stream<double>? $toolbarHeight,
    // Associate with leadingWidth
    Stream<double?>? $leadingWidth,
    // Associate with toolbarTextStyle
    Stream<_i4.TextStyle?>? $toolbarTextStyle,
    // Associate with titleTextStyle
    Stream<_i4.TextStyle?>? $titleTextStyle,
    // Associate with systemOverlayStyle
    Stream<_i5.SystemUiOverlayStyle?>? $systemOverlayStyle,
    // Associate with forceMaterialTransparency
    Stream<bool>? $forceMaterialTransparency,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'leading': leading,
              'automaticallyImplyLeading': automaticallyImplyLeading,
              'title': title,
              'actions': actions,
              'flexibleSpace': flexibleSpace,
              'bottom': bottom,
              'elevation': elevation,
              'scrolledUnderElevation': scrolledUnderElevation,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'forceElevated': forceElevated,
              'backgroundColor': backgroundColor,
              'foregroundColor': foregroundColor,
              'iconTheme': iconTheme,
              'actionsIconTheme': actionsIconTheme,
              'primary': primary,
              'centerTitle': centerTitle,
              'excludeHeaderSemantics': excludeHeaderSemantics,
              'titleSpacing': titleSpacing,
              'collapsedHeight': collapsedHeight,
              'expandedHeight': expandedHeight,
              'floating': floating,
              'pinned': pinned,
              'snap': snap,
              'stretch': stretch,
              'stretchTriggerOffset': stretchTriggerOffset,
              'onStretchTrigger': onStretchTrigger,
              'shape': shape,
              'toolbarHeight': toolbarHeight,
              'leadingWidth': leadingWidth,
              'toolbarTextStyle': toolbarTextStyle,
              'titleTextStyle': titleTextStyle,
              'systemOverlayStyle': systemOverlayStyle,
              'forceMaterialTransparency': forceMaterialTransparency,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'leading': $leading,
              'automaticallyImplyLeading': $automaticallyImplyLeading,
              'title': $title,
              'actions': $actions,
              'flexibleSpace': $flexibleSpace,
              'bottom': $bottom,
              'elevation': $elevation,
              'scrolledUnderElevation': $scrolledUnderElevation,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'forceElevated': $forceElevated,
              'backgroundColor': $backgroundColor,
              'foregroundColor': $foregroundColor,
              'iconTheme': $iconTheme,
              'actionsIconTheme': $actionsIconTheme,
              'primary': $primary,
              'centerTitle': $centerTitle,
              'excludeHeaderSemantics': $excludeHeaderSemantics,
              'titleSpacing': $titleSpacing,
              'collapsedHeight': $collapsedHeight,
              'expandedHeight': $expandedHeight,
              'floating': $floating,
              'pinned': $pinned,
              'snap': $snap,
              'stretch': $stretch,
              'stretchTriggerOffset': $stretchTriggerOffset,
              'onStretchTrigger': $onStretchTrigger,
              'shape': $shape,
              'toolbarHeight': $toolbarHeight,
              'leadingWidth': $leadingWidth,
              'toolbarTextStyle': $toolbarTextStyle,
              'titleTextStyle': $titleTextStyle,
              'systemOverlayStyle': $systemOverlayStyle,
              'forceMaterialTransparency': $forceMaterialTransparency,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.SliverAppBar.large(
            key: args('key'),
            leading: args('leading'),
            automaticallyImplyLeading: args('automaticallyImplyLeading'),
            title: args('title'),
            actions: args('actions'),
            flexibleSpace: args('flexibleSpace'),
            bottom: args('bottom'),
            elevation: args('elevation'),
            scrolledUnderElevation: args('scrolledUnderElevation'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            forceElevated: args('forceElevated'),
            backgroundColor: args('backgroundColor'),
            foregroundColor: args('foregroundColor'),
            iconTheme: args('iconTheme'),
            actionsIconTheme: args('actionsIconTheme'),
            primary: args('primary'),
            centerTitle: args('centerTitle'),
            excludeHeaderSemantics: args('excludeHeaderSemantics'),
            titleSpacing: args('titleSpacing'),
            collapsedHeight: args('collapsedHeight'),
            expandedHeight: args('expandedHeight'),
            floating: args('floating'),
            pinned: args('pinned'),
            snap: args('snap'),
            stretch: args('stretch'),
            stretchTriggerOffset: args('stretchTriggerOffset'),
            onStretchTrigger: args('onStretchTrigger'),
            shape: args('shape'),
            toolbarHeight: args('toolbarHeight'),
            leadingWidth: args('leadingWidth'),
            toolbarTextStyle: args('toolbarTextStyle'),
            titleTextStyle: args('titleTextStyle'),
            systemOverlayStyle: args('systemOverlayStyle'),
            forceMaterialTransparency: args('forceMaterialTransparency'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}

final class AppBar extends Wrapper {
  @Goto(_i1.AppBar.new)
  AppBar({
    _i2.Key? key,
    _i3.Widget? leading,
    bool automaticallyImplyLeading = true,
    _i3.Widget? title,
    List<_i3.Widget>? actions,
    _i3.Widget? flexibleSpace,
    _i3.PreferredSizeWidget? bottom,
    double? elevation,
    double? scrolledUnderElevation,
    _i3.ScrollNotificationPredicate notificationPredicate = _i3.defaultScrollNotificationPredicate,
    ui.Color? shadowColor,
    ui.Color? surfaceTintColor,
    _i4.ShapeBorder? shape,
    ui.Color? backgroundColor,
    ui.Color? foregroundColor,
    _i3.IconThemeData? iconTheme,
    _i3.IconThemeData? actionsIconTheme,
    bool primary = true,
    bool? centerTitle,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    _i4.TextStyle? toolbarTextStyle,
    _i4.TextStyle? titleTextStyle,
    _i5.SystemUiOverlayStyle? systemOverlayStyle,
    bool forceMaterialTransparency = false,
    ui.Clip? clipBehavior,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with leading
    Stream<_i3.Widget?>? $leading,
    // Associate with automaticallyImplyLeading
    Stream<bool>? $automaticallyImplyLeading,
    // Associate with title
    Stream<_i3.Widget?>? $title,
    // Associate with actions
    Stream<List<_i3.Widget>?>? $actions,
    // Associate with flexibleSpace
    Stream<_i3.Widget?>? $flexibleSpace,
    // Associate with bottom
    Stream<_i3.PreferredSizeWidget?>? $bottom,
    // Associate with elevation
    Stream<double?>? $elevation,
    // Associate with scrolledUnderElevation
    Stream<double?>? $scrolledUnderElevation,
    // Associate with notificationPredicate
    Stream<_i3.ScrollNotificationPredicate>? $notificationPredicate,
    // Associate with shadowColor
    Stream<ui.Color?>? $shadowColor,
    // Associate with surfaceTintColor
    Stream<ui.Color?>? $surfaceTintColor,
    // Associate with shape
    Stream<_i4.ShapeBorder?>? $shape,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with foregroundColor
    Stream<ui.Color?>? $foregroundColor,
    // Associate with iconTheme
    Stream<_i3.IconThemeData?>? $iconTheme,
    // Associate with actionsIconTheme
    Stream<_i3.IconThemeData?>? $actionsIconTheme,
    // Associate with primary
    Stream<bool>? $primary,
    // Associate with centerTitle
    Stream<bool?>? $centerTitle,
    // Associate with excludeHeaderSemantics
    Stream<bool>? $excludeHeaderSemantics,
    // Associate with titleSpacing
    Stream<double?>? $titleSpacing,
    // Associate with toolbarOpacity
    Stream<double>? $toolbarOpacity,
    // Associate with bottomOpacity
    Stream<double>? $bottomOpacity,
    // Associate with toolbarHeight
    Stream<double?>? $toolbarHeight,
    // Associate with leadingWidth
    Stream<double?>? $leadingWidth,
    // Associate with toolbarTextStyle
    Stream<_i4.TextStyle?>? $toolbarTextStyle,
    // Associate with titleTextStyle
    Stream<_i4.TextStyle?>? $titleTextStyle,
    // Associate with systemOverlayStyle
    Stream<_i5.SystemUiOverlayStyle?>? $systemOverlayStyle,
    // Associate with forceMaterialTransparency
    Stream<bool>? $forceMaterialTransparency,
    // Associate with clipBehavior
    Stream<ui.Clip?>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'leading': leading,
              'automaticallyImplyLeading': automaticallyImplyLeading,
              'title': title,
              'actions': actions,
              'flexibleSpace': flexibleSpace,
              'bottom': bottom,
              'elevation': elevation,
              'scrolledUnderElevation': scrolledUnderElevation,
              'notificationPredicate': notificationPredicate,
              'shadowColor': shadowColor,
              'surfaceTintColor': surfaceTintColor,
              'shape': shape,
              'backgroundColor': backgroundColor,
              'foregroundColor': foregroundColor,
              'iconTheme': iconTheme,
              'actionsIconTheme': actionsIconTheme,
              'primary': primary,
              'centerTitle': centerTitle,
              'excludeHeaderSemantics': excludeHeaderSemantics,
              'titleSpacing': titleSpacing,
              'toolbarOpacity': toolbarOpacity,
              'bottomOpacity': bottomOpacity,
              'toolbarHeight': toolbarHeight,
              'leadingWidth': leadingWidth,
              'toolbarTextStyle': toolbarTextStyle,
              'titleTextStyle': titleTextStyle,
              'systemOverlayStyle': systemOverlayStyle,
              'forceMaterialTransparency': forceMaterialTransparency,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'leading': $leading,
              'automaticallyImplyLeading': $automaticallyImplyLeading,
              'title': $title,
              'actions': $actions,
              'flexibleSpace': $flexibleSpace,
              'bottom': $bottom,
              'elevation': $elevation,
              'scrolledUnderElevation': $scrolledUnderElevation,
              'notificationPredicate': $notificationPredicate,
              'shadowColor': $shadowColor,
              'surfaceTintColor': $surfaceTintColor,
              'shape': $shape,
              'backgroundColor': $backgroundColor,
              'foregroundColor': $foregroundColor,
              'iconTheme': $iconTheme,
              'actionsIconTheme': $actionsIconTheme,
              'primary': $primary,
              'centerTitle': $centerTitle,
              'excludeHeaderSemantics': $excludeHeaderSemantics,
              'titleSpacing': $titleSpacing,
              'toolbarOpacity': $toolbarOpacity,
              'bottomOpacity': $bottomOpacity,
              'toolbarHeight': $toolbarHeight,
              'leadingWidth': $leadingWidth,
              'toolbarTextStyle': $toolbarTextStyle,
              'titleTextStyle': $titleTextStyle,
              'systemOverlayStyle': $systemOverlayStyle,
              'forceMaterialTransparency': $forceMaterialTransparency,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.AppBar(
            key: args('key'),
            leading: args('leading'),
            automaticallyImplyLeading: args('automaticallyImplyLeading'),
            title: args('title'),
            actions: args('actions'),
            flexibleSpace: args('flexibleSpace'),
            bottom: args('bottom'),
            elevation: args('elevation'),
            scrolledUnderElevation: args('scrolledUnderElevation'),
            notificationPredicate: args('notificationPredicate'),
            shadowColor: args('shadowColor'),
            surfaceTintColor: args('surfaceTintColor'),
            shape: args('shape'),
            backgroundColor: args('backgroundColor'),
            foregroundColor: args('foregroundColor'),
            iconTheme: args('iconTheme'),
            actionsIconTheme: args('actionsIconTheme'),
            primary: args('primary'),
            centerTitle: args('centerTitle'),
            excludeHeaderSemantics: args('excludeHeaderSemantics'),
            titleSpacing: args('titleSpacing'),
            toolbarOpacity: args('toolbarOpacity'),
            bottomOpacity: args('bottomOpacity'),
            toolbarHeight: args('toolbarHeight'),
            leadingWidth: args('leadingWidth'),
            toolbarTextStyle: args('toolbarTextStyle'),
            titleTextStyle: args('titleTextStyle'),
            systemOverlayStyle: args('systemOverlayStyle'),
            forceMaterialTransparency: args('forceMaterialTransparency'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}

class _MediumScrollUnderFlexibleConfig with _ScrollUnderFlexibleConfig {
  _MediumScrollUnderFlexibleConfig(this.context);
  final _i3.BuildContext context;
  late final _i1.ThemeData _theme = _i1.Theme.of(context);
  late final _i1.ColorScheme _colors = _theme.colorScheme;
  late final _i1.TextTheme _textTheme = _theme.textTheme;
  static const double collapsedHeight = 64.0;
  static const double expandedHeight = 112.0;
  @override
  _i4.TextStyle? get collapsedTextStyle => _textTheme.titleLarge?.apply(color: _colors.onSurface);
  @override
  _i4.TextStyle? get expandedTextStyle => _textTheme.headlineSmall?.apply(color: _colors.onSurface);
  @override
  _i4.EdgeInsetsGeometry get expandedTitlePadding => const _i4.EdgeInsets.fromLTRB(16, 0, 16, 20);
}

class _LargeScrollUnderFlexibleConfig with _ScrollUnderFlexibleConfig {
  _LargeScrollUnderFlexibleConfig(this.context);
  final _i3.BuildContext context;
  late final _i1.ThemeData _theme = _i1.Theme.of(context);
  late final _i1.ColorScheme _colors = _theme.colorScheme;
  late final _i1.TextTheme _textTheme = _theme.textTheme;
  static const double collapsedHeight = 64.0;
  static const double expandedHeight = 152.0;
  @override
  _i4.TextStyle? get collapsedTextStyle => _textTheme.titleLarge?.apply(color: _colors.onSurface);
  @override
  _i4.TextStyle? get expandedTextStyle => _textTheme.headlineMedium?.apply(color: _colors.onSurface);
  @override
  _i4.EdgeInsetsGeometry get expandedTitlePadding => const _i4.EdgeInsets.fromLTRB(16, 0, 16, 28);
}

mixin _ScrollUnderFlexibleConfig {
  _i4.TextStyle? get collapsedTextStyle;
  _i4.TextStyle? get expandedTextStyle;
  _i4.EdgeInsetsGeometry get expandedTitlePadding;
}
