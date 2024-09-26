library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i4;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i5;
import 'package:flutter/services.dart' as _i6;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TabBarView extends Wrapper {
  @Goto(_i1.TabBarView.new)
  TabBarView(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> children,
    _i1.TabController? controller,
    _i3.ScrollPhysics? physics,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    double viewportFraction = 1.0,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
  }) : super(
          Argument({
            #key: key,
            #children: children,
            #controller: controller,
            #physics: physics,
            #dragStartBehavior: dragStartBehavior,
            #viewportFraction: viewportFraction,
            #clipBehavior: clipBehavior,
          }),
          builder: (args) => _i1.TabBarView(
            key: args(#key),
            children: args(#children),
            controller: args(#controller),
            physics: args(#physics),
            dragStartBehavior: args(#dragStartBehavior),
            viewportFraction: args(#viewportFraction),
            clipBehavior: args(#clipBehavior),
          ),
        );
}

final class TabPageSelector extends Wrapper {
  @Goto(_i1.TabPageSelector.new)
  TabPageSelector(
    $ $config, {
    _i2.Key? key,
    _i1.TabController? controller,
    double indicatorSize = 12.0,
    ui.Color? color,
    ui.Color? selectedColor,
    _i5.BorderStyle? borderStyle,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #indicatorSize: indicatorSize,
            #color: color,
            #selectedColor: selectedColor,
            #borderStyle: borderStyle,
          }),
          builder: (args) => _i1.TabPageSelector(
            key: args(#key),
            controller: args(#controller),
            indicatorSize: args(#indicatorSize),
            color: args(#color),
            selectedColor: args(#selectedColor),
            borderStyle: args(#borderStyle),
          ),
        );
}

final class TabBar extends Wrapper {
  @Goto(_i1.TabBar.new)
  TabBar(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> tabs,
    _i1.TabController? controller,
    bool isScrollable = false,
    _i5.EdgeInsetsGeometry? padding,
    ui.Color? indicatorColor,
    bool automaticIndicatorColorAdjustment = true,
    double indicatorWeight = 2.0,
    _i5.EdgeInsetsGeometry indicatorPadding = _i5.EdgeInsets.zero,
    _i5.Decoration? indicator,
    _i1.TabBarIndicatorSize? indicatorSize,
    ui.Color? dividerColor,
    double? dividerHeight,
    ui.Color? labelColor,
    _i5.TextStyle? labelStyle,
    _i5.EdgeInsetsGeometry? labelPadding,
    ui.Color? unselectedLabelColor,
    _i5.TextStyle? unselectedLabelStyle,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    _i6.MouseCursor? mouseCursor,
    bool? enableFeedback,
    _i2.ValueChanged<int>? onTap,
    _i3.ScrollPhysics? physics,
    _i1.InteractiveInkFeatureFactory? splashFactory,
    _i5.BorderRadius? splashBorderRadius,
    _i1.TabAlignment? tabAlignment,
    _i5.TextScaler? textScaler,
  }) : super(
          Argument({
            #key: key,
            #tabs: tabs,
            #controller: controller,
            #isScrollable: isScrollable,
            #padding: padding,
            #indicatorColor: indicatorColor,
            #automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment,
            #indicatorWeight: indicatorWeight,
            #indicatorPadding: indicatorPadding,
            #indicator: indicator,
            #indicatorSize: indicatorSize,
            #dividerColor: dividerColor,
            #dividerHeight: dividerHeight,
            #labelColor: labelColor,
            #labelStyle: labelStyle,
            #labelPadding: labelPadding,
            #unselectedLabelColor: unselectedLabelColor,
            #unselectedLabelStyle: unselectedLabelStyle,
            #dragStartBehavior: dragStartBehavior,
            #overlayColor: overlayColor,
            #mouseCursor: mouseCursor,
            #enableFeedback: enableFeedback,
            #onTap: onTap,
            #physics: physics,
            #splashFactory: splashFactory,
            #splashBorderRadius: splashBorderRadius,
            #tabAlignment: tabAlignment,
            #textScaler: textScaler,
          }),
          builder: (args) => _i1.TabBar(
            key: args(#key),
            tabs: args(#tabs),
            controller: args(#controller),
            isScrollable: args(#isScrollable),
            padding: args(#padding),
            indicatorColor: args(#indicatorColor),
            automaticIndicatorColorAdjustment: args(#automaticIndicatorColorAdjustment),
            indicatorWeight: args(#indicatorWeight),
            indicatorPadding: args(#indicatorPadding),
            indicator: args(#indicator),
            indicatorSize: args(#indicatorSize),
            dividerColor: args(#dividerColor),
            dividerHeight: args(#dividerHeight),
            labelColor: args(#labelColor),
            labelStyle: args(#labelStyle),
            labelPadding: args(#labelPadding),
            unselectedLabelColor: args(#unselectedLabelColor),
            unselectedLabelStyle: args(#unselectedLabelStyle),
            dragStartBehavior: args(#dragStartBehavior),
            overlayColor: args(#overlayColor),
            mouseCursor: args(#mouseCursor),
            enableFeedback: args(#enableFeedback),
            onTap: args(#onTap),
            physics: args(#physics),
            splashFactory: args(#splashFactory),
            splashBorderRadius: args(#splashBorderRadius),
            tabAlignment: args(#tabAlignment),
            textScaler: args(#textScaler),
          ),
        );

  @Goto(_i1.TabBar.secondary)
  TabBar.secondary(
    $ $config, {
    _i2.Key? key,
    required List<_i3.Widget> tabs,
    _i1.TabController? controller,
    bool isScrollable = false,
    _i5.EdgeInsetsGeometry? padding,
    ui.Color? indicatorColor,
    bool automaticIndicatorColorAdjustment = true,
    double indicatorWeight = 2.0,
    _i5.EdgeInsetsGeometry indicatorPadding = _i5.EdgeInsets.zero,
    _i5.Decoration? indicator,
    _i1.TabBarIndicatorSize? indicatorSize,
    ui.Color? dividerColor,
    double? dividerHeight,
    ui.Color? labelColor,
    _i5.TextStyle? labelStyle,
    _i5.EdgeInsetsGeometry? labelPadding,
    ui.Color? unselectedLabelColor,
    _i5.TextStyle? unselectedLabelStyle,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    _i6.MouseCursor? mouseCursor,
    bool? enableFeedback,
    _i2.ValueChanged<int>? onTap,
    _i3.ScrollPhysics? physics,
    _i1.InteractiveInkFeatureFactory? splashFactory,
    _i5.BorderRadius? splashBorderRadius,
    _i1.TabAlignment? tabAlignment,
    _i5.TextScaler? textScaler,
  }) : super(
          Argument({
            #key: key,
            #tabs: tabs,
            #controller: controller,
            #isScrollable: isScrollable,
            #padding: padding,
            #indicatorColor: indicatorColor,
            #automaticIndicatorColorAdjustment: automaticIndicatorColorAdjustment,
            #indicatorWeight: indicatorWeight,
            #indicatorPadding: indicatorPadding,
            #indicator: indicator,
            #indicatorSize: indicatorSize,
            #dividerColor: dividerColor,
            #dividerHeight: dividerHeight,
            #labelColor: labelColor,
            #labelStyle: labelStyle,
            #labelPadding: labelPadding,
            #unselectedLabelColor: unselectedLabelColor,
            #unselectedLabelStyle: unselectedLabelStyle,
            #dragStartBehavior: dragStartBehavior,
            #overlayColor: overlayColor,
            #mouseCursor: mouseCursor,
            #enableFeedback: enableFeedback,
            #onTap: onTap,
            #physics: physics,
            #splashFactory: splashFactory,
            #splashBorderRadius: splashBorderRadius,
            #tabAlignment: tabAlignment,
            #textScaler: textScaler,
          }),
          builder: (args) => _i1.TabBar.secondary(
            key: args(#key),
            tabs: args(#tabs),
            controller: args(#controller),
            isScrollable: args(#isScrollable),
            padding: args(#padding),
            indicatorColor: args(#indicatorColor),
            automaticIndicatorColorAdjustment: args(#automaticIndicatorColorAdjustment),
            indicatorWeight: args(#indicatorWeight),
            indicatorPadding: args(#indicatorPadding),
            indicator: args(#indicator),
            indicatorSize: args(#indicatorSize),
            dividerColor: args(#dividerColor),
            dividerHeight: args(#dividerHeight),
            labelColor: args(#labelColor),
            labelStyle: args(#labelStyle),
            labelPadding: args(#labelPadding),
            unselectedLabelColor: args(#unselectedLabelColor),
            unselectedLabelStyle: args(#unselectedLabelStyle),
            dragStartBehavior: args(#dragStartBehavior),
            overlayColor: args(#overlayColor),
            mouseCursor: args(#mouseCursor),
            enableFeedback: args(#enableFeedback),
            onTap: args(#onTap),
            physics: args(#physics),
            splashFactory: args(#splashFactory),
            splashBorderRadius: args(#splashBorderRadius),
            tabAlignment: args(#tabAlignment),
            textScaler: args(#textScaler),
          ),
        );
}

final class TabPageSelectorIndicator extends Wrapper {
  @Goto(_i1.TabPageSelectorIndicator.new)
  TabPageSelectorIndicator(
    $ $config, {
    _i2.Key? key,
    required ui.Color backgroundColor,
    required ui.Color borderColor,
    required double size,
    _i5.BorderStyle borderStyle = _i5.BorderStyle.solid,
  }) : super(
          Argument({
            #key: key,
            #backgroundColor: backgroundColor,
            #borderColor: borderColor,
            #size: size,
            #borderStyle: borderStyle,
          }),
          builder: (args) => _i1.TabPageSelectorIndicator(
            key: args(#key),
            backgroundColor: args(#backgroundColor),
            borderColor: args(#borderColor),
            size: args(#size),
            borderStyle: args(#borderStyle),
          ),
        );
}

final class Tab extends Wrapper {
  @Goto(_i1.Tab.new)
  Tab(
    $ $config, {
    _i2.Key? key,
    String? text,
    _i3.Widget? icon,
    _i5.EdgeInsetsGeometry? iconMargin,
    double? height,
    _i3.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #text: text,
            #icon: icon,
            #iconMargin: iconMargin,
            #height: height,
            #child: child,
          }),
          builder: (args) => _i1.Tab(
            key: args(#key),
            text: args(#text),
            icon: args(#icon),
            iconMargin: args(#iconMargin),
            height: args(#height),
            child: args(#child),
          ),
        );
}
