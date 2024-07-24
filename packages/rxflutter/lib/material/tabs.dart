library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
  TabBarView({
    _i2.Key? key,
    required List<_i3.Widget> children,
    _i1.TabController? controller,
    _i3.ScrollPhysics? physics,
    _i4.DragStartBehavior dragStartBehavior = _i4.DragStartBehavior.start,
    double viewportFraction = 1.0,
    ui.Clip clipBehavior = ui.Clip.hardEdge,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with children
    Stream<List<_i3.Widget>>? $children,
    // Associate with controller
    Stream<_i1.TabController?>? $controller,
    // Associate with physics
    Stream<_i3.ScrollPhysics?>? $physics,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with viewportFraction
    Stream<double>? $viewportFraction,
    // Associate with clipBehavior
    Stream<ui.Clip>? $clipBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'children': children,
              'controller': controller,
              'physics': physics,
              'dragStartBehavior': dragStartBehavior,
              'viewportFraction': viewportFraction,
              'clipBehavior': clipBehavior,
            },
            stream: {
              'key': $key,
              'children': $children,
              'controller': $controller,
              'physics': $physics,
              'dragStartBehavior': $dragStartBehavior,
              'viewportFraction': $viewportFraction,
              'clipBehavior': $clipBehavior,
            },
          ),
          builder: (args) => _i1.TabBarView(
            key: args('key'),
            children: args('children'),
            controller: args('controller'),
            physics: args('physics'),
            dragStartBehavior: args('dragStartBehavior'),
            viewportFraction: args('viewportFraction'),
            clipBehavior: args('clipBehavior'),
          ),
        );
}

final class TabPageSelector extends Wrapper {
  @Goto(_i1.TabPageSelector.new)
  TabPageSelector({
    _i2.Key? key,
    _i1.TabController? controller,
    double indicatorSize = 12.0,
    ui.Color? color,
    ui.Color? selectedColor,
    _i5.BorderStyle? borderStyle,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with controller
    Stream<_i1.TabController?>? $controller,
    // Associate with indicatorSize
    Stream<double>? $indicatorSize,
    // Associate with color
    Stream<ui.Color?>? $color,
    // Associate with selectedColor
    Stream<ui.Color?>? $selectedColor,
    // Associate with borderStyle
    Stream<_i5.BorderStyle?>? $borderStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'controller': controller,
              'indicatorSize': indicatorSize,
              'color': color,
              'selectedColor': selectedColor,
              'borderStyle': borderStyle,
            },
            stream: {
              'key': $key,
              'controller': $controller,
              'indicatorSize': $indicatorSize,
              'color': $color,
              'selectedColor': $selectedColor,
              'borderStyle': $borderStyle,
            },
          ),
          builder: (args) => _i1.TabPageSelector(
            key: args('key'),
            controller: args('controller'),
            indicatorSize: args('indicatorSize'),
            color: args('color'),
            selectedColor: args('selectedColor'),
            borderStyle: args('borderStyle'),
          ),
        );
}

final class TabBar extends Wrapper {
  @Goto(_i1.TabBar.new)
  TabBar({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with tabs
    Stream<List<_i3.Widget>>? $tabs,
    // Associate with controller
    Stream<_i1.TabController?>? $controller,
    // Associate with isScrollable
    Stream<bool>? $isScrollable,
    // Associate with padding
    Stream<_i5.EdgeInsetsGeometry?>? $padding,
    // Associate with indicatorColor
    Stream<ui.Color?>? $indicatorColor,
    // Associate with automaticIndicatorColorAdjustment
    Stream<bool>? $automaticIndicatorColorAdjustment,
    // Associate with indicatorWeight
    Stream<double>? $indicatorWeight,
    // Associate with indicatorPadding
    Stream<_i5.EdgeInsetsGeometry>? $indicatorPadding,
    // Associate with indicator
    Stream<_i5.Decoration?>? $indicator,
    // Associate with indicatorSize
    Stream<_i1.TabBarIndicatorSize?>? $indicatorSize,
    // Associate with dividerColor
    Stream<ui.Color?>? $dividerColor,
    // Associate with dividerHeight
    Stream<double?>? $dividerHeight,
    // Associate with labelColor
    Stream<ui.Color?>? $labelColor,
    // Associate with labelStyle
    Stream<_i5.TextStyle?>? $labelStyle,
    // Associate with labelPadding
    Stream<_i5.EdgeInsetsGeometry?>? $labelPadding,
    // Associate with unselectedLabelColor
    Stream<ui.Color?>? $unselectedLabelColor,
    // Associate with unselectedLabelStyle
    Stream<_i5.TextStyle?>? $unselectedLabelStyle,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with overlayColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with mouseCursor
    Stream<_i6.MouseCursor?>? $mouseCursor,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with onTap
    Stream<_i2.ValueChanged<int>?>? $onTap,
    // Associate with physics
    Stream<_i3.ScrollPhysics?>? $physics,
    // Associate with splashFactory
    Stream<_i1.InteractiveInkFeatureFactory?>? $splashFactory,
    // Associate with splashBorderRadius
    Stream<_i5.BorderRadius?>? $splashBorderRadius,
    // Associate with tabAlignment
    Stream<_i1.TabAlignment?>? $tabAlignment,
  }) : super(
          Argument(
            {
              'key': key,
              'tabs': tabs,
              'controller': controller,
              'isScrollable': isScrollable,
              'padding': padding,
              'indicatorColor': indicatorColor,
              'automaticIndicatorColorAdjustment': automaticIndicatorColorAdjustment,
              'indicatorWeight': indicatorWeight,
              'indicatorPadding': indicatorPadding,
              'indicator': indicator,
              'indicatorSize': indicatorSize,
              'dividerColor': dividerColor,
              'dividerHeight': dividerHeight,
              'labelColor': labelColor,
              'labelStyle': labelStyle,
              'labelPadding': labelPadding,
              'unselectedLabelColor': unselectedLabelColor,
              'unselectedLabelStyle': unselectedLabelStyle,
              'dragStartBehavior': dragStartBehavior,
              'overlayColor': overlayColor,
              'mouseCursor': mouseCursor,
              'enableFeedback': enableFeedback,
              'onTap': onTap,
              'physics': physics,
              'splashFactory': splashFactory,
              'splashBorderRadius': splashBorderRadius,
              'tabAlignment': tabAlignment,
            },
            stream: {
              'key': $key,
              'tabs': $tabs,
              'controller': $controller,
              'isScrollable': $isScrollable,
              'padding': $padding,
              'indicatorColor': $indicatorColor,
              'automaticIndicatorColorAdjustment': $automaticIndicatorColorAdjustment,
              'indicatorWeight': $indicatorWeight,
              'indicatorPadding': $indicatorPadding,
              'indicator': $indicator,
              'indicatorSize': $indicatorSize,
              'dividerColor': $dividerColor,
              'dividerHeight': $dividerHeight,
              'labelColor': $labelColor,
              'labelStyle': $labelStyle,
              'labelPadding': $labelPadding,
              'unselectedLabelColor': $unselectedLabelColor,
              'unselectedLabelStyle': $unselectedLabelStyle,
              'dragStartBehavior': $dragStartBehavior,
              'overlayColor': $overlayColor,
              'mouseCursor': $mouseCursor,
              'enableFeedback': $enableFeedback,
              'onTap': $onTap,
              'physics': $physics,
              'splashFactory': $splashFactory,
              'splashBorderRadius': $splashBorderRadius,
              'tabAlignment': $tabAlignment,
            },
          ),
          builder: (args) => _i1.TabBar(
            key: args('key'),
            tabs: args('tabs'),
            controller: args('controller'),
            isScrollable: args('isScrollable'),
            padding: args('padding'),
            indicatorColor: args('indicatorColor'),
            automaticIndicatorColorAdjustment: args('automaticIndicatorColorAdjustment'),
            indicatorWeight: args('indicatorWeight'),
            indicatorPadding: args('indicatorPadding'),
            indicator: args('indicator'),
            indicatorSize: args('indicatorSize'),
            dividerColor: args('dividerColor'),
            dividerHeight: args('dividerHeight'),
            labelColor: args('labelColor'),
            labelStyle: args('labelStyle'),
            labelPadding: args('labelPadding'),
            unselectedLabelColor: args('unselectedLabelColor'),
            unselectedLabelStyle: args('unselectedLabelStyle'),
            dragStartBehavior: args('dragStartBehavior'),
            overlayColor: args('overlayColor'),
            mouseCursor: args('mouseCursor'),
            enableFeedback: args('enableFeedback'),
            onTap: args('onTap'),
            physics: args('physics'),
            splashFactory: args('splashFactory'),
            splashBorderRadius: args('splashBorderRadius'),
            tabAlignment: args('tabAlignment'),
          ),
        );

  @Goto(_i1.TabBar.secondary)
  TabBar.secondary({
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
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with tabs
    Stream<List<_i3.Widget>>? $tabs,
    // Associate with controller
    Stream<_i1.TabController?>? $controller,
    // Associate with isScrollable
    Stream<bool>? $isScrollable,
    // Associate with padding
    Stream<_i5.EdgeInsetsGeometry?>? $padding,
    // Associate with indicatorColor
    Stream<ui.Color?>? $indicatorColor,
    // Associate with automaticIndicatorColorAdjustment
    Stream<bool>? $automaticIndicatorColorAdjustment,
    // Associate with indicatorWeight
    Stream<double>? $indicatorWeight,
    // Associate with indicatorPadding
    Stream<_i5.EdgeInsetsGeometry>? $indicatorPadding,
    // Associate with indicator
    Stream<_i5.Decoration?>? $indicator,
    // Associate with indicatorSize
    Stream<_i1.TabBarIndicatorSize?>? $indicatorSize,
    // Associate with dividerColor
    Stream<ui.Color?>? $dividerColor,
    // Associate with dividerHeight
    Stream<double?>? $dividerHeight,
    // Associate with labelColor
    Stream<ui.Color?>? $labelColor,
    // Associate with labelStyle
    Stream<_i5.TextStyle?>? $labelStyle,
    // Associate with labelPadding
    Stream<_i5.EdgeInsetsGeometry?>? $labelPadding,
    // Associate with unselectedLabelColor
    Stream<ui.Color?>? $unselectedLabelColor,
    // Associate with unselectedLabelStyle
    Stream<_i5.TextStyle?>? $unselectedLabelStyle,
    // Associate with dragStartBehavior
    Stream<_i4.DragStartBehavior>? $dragStartBehavior,
    // Associate with overlayColor
    Stream<_i3.WidgetStateProperty<ui.Color?>?>? $overlayColor,
    // Associate with mouseCursor
    Stream<_i6.MouseCursor?>? $mouseCursor,
    // Associate with enableFeedback
    Stream<bool?>? $enableFeedback,
    // Associate with onTap
    Stream<_i2.ValueChanged<int>?>? $onTap,
    // Associate with physics
    Stream<_i3.ScrollPhysics?>? $physics,
    // Associate with splashFactory
    Stream<_i1.InteractiveInkFeatureFactory?>? $splashFactory,
    // Associate with splashBorderRadius
    Stream<_i5.BorderRadius?>? $splashBorderRadius,
    // Associate with tabAlignment
    Stream<_i1.TabAlignment?>? $tabAlignment,
  }) : super(
          Argument(
            {
              'key': key,
              'tabs': tabs,
              'controller': controller,
              'isScrollable': isScrollable,
              'padding': padding,
              'indicatorColor': indicatorColor,
              'automaticIndicatorColorAdjustment': automaticIndicatorColorAdjustment,
              'indicatorWeight': indicatorWeight,
              'indicatorPadding': indicatorPadding,
              'indicator': indicator,
              'indicatorSize': indicatorSize,
              'dividerColor': dividerColor,
              'dividerHeight': dividerHeight,
              'labelColor': labelColor,
              'labelStyle': labelStyle,
              'labelPadding': labelPadding,
              'unselectedLabelColor': unselectedLabelColor,
              'unselectedLabelStyle': unselectedLabelStyle,
              'dragStartBehavior': dragStartBehavior,
              'overlayColor': overlayColor,
              'mouseCursor': mouseCursor,
              'enableFeedback': enableFeedback,
              'onTap': onTap,
              'physics': physics,
              'splashFactory': splashFactory,
              'splashBorderRadius': splashBorderRadius,
              'tabAlignment': tabAlignment,
            },
            stream: {
              'key': $key,
              'tabs': $tabs,
              'controller': $controller,
              'isScrollable': $isScrollable,
              'padding': $padding,
              'indicatorColor': $indicatorColor,
              'automaticIndicatorColorAdjustment': $automaticIndicatorColorAdjustment,
              'indicatorWeight': $indicatorWeight,
              'indicatorPadding': $indicatorPadding,
              'indicator': $indicator,
              'indicatorSize': $indicatorSize,
              'dividerColor': $dividerColor,
              'dividerHeight': $dividerHeight,
              'labelColor': $labelColor,
              'labelStyle': $labelStyle,
              'labelPadding': $labelPadding,
              'unselectedLabelColor': $unselectedLabelColor,
              'unselectedLabelStyle': $unselectedLabelStyle,
              'dragStartBehavior': $dragStartBehavior,
              'overlayColor': $overlayColor,
              'mouseCursor': $mouseCursor,
              'enableFeedback': $enableFeedback,
              'onTap': $onTap,
              'physics': $physics,
              'splashFactory': $splashFactory,
              'splashBorderRadius': $splashBorderRadius,
              'tabAlignment': $tabAlignment,
            },
          ),
          builder: (args) => _i1.TabBar.secondary(
            key: args('key'),
            tabs: args('tabs'),
            controller: args('controller'),
            isScrollable: args('isScrollable'),
            padding: args('padding'),
            indicatorColor: args('indicatorColor'),
            automaticIndicatorColorAdjustment: args('automaticIndicatorColorAdjustment'),
            indicatorWeight: args('indicatorWeight'),
            indicatorPadding: args('indicatorPadding'),
            indicator: args('indicator'),
            indicatorSize: args('indicatorSize'),
            dividerColor: args('dividerColor'),
            dividerHeight: args('dividerHeight'),
            labelColor: args('labelColor'),
            labelStyle: args('labelStyle'),
            labelPadding: args('labelPadding'),
            unselectedLabelColor: args('unselectedLabelColor'),
            unselectedLabelStyle: args('unselectedLabelStyle'),
            dragStartBehavior: args('dragStartBehavior'),
            overlayColor: args('overlayColor'),
            mouseCursor: args('mouseCursor'),
            enableFeedback: args('enableFeedback'),
            onTap: args('onTap'),
            physics: args('physics'),
            splashFactory: args('splashFactory'),
            splashBorderRadius: args('splashBorderRadius'),
            tabAlignment: args('tabAlignment'),
          ),
        );
}

final class TabPageSelectorIndicator extends Wrapper {
  @Goto(_i1.TabPageSelectorIndicator.new)
  TabPageSelectorIndicator({
    _i2.Key? key,
    required ui.Color backgroundColor,
    required ui.Color borderColor,
    required double size,
    _i5.BorderStyle borderStyle = _i5.BorderStyle.solid,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with backgroundColor
    Stream<ui.Color>? $backgroundColor,
    // Associate with borderColor
    Stream<ui.Color>? $borderColor,
    // Associate with size
    Stream<double>? $size,
    // Associate with borderStyle
    Stream<_i5.BorderStyle>? $borderStyle,
  }) : super(
          Argument(
            {
              'key': key,
              'backgroundColor': backgroundColor,
              'borderColor': borderColor,
              'size': size,
              'borderStyle': borderStyle,
            },
            stream: {
              'key': $key,
              'backgroundColor': $backgroundColor,
              'borderColor': $borderColor,
              'size': $size,
              'borderStyle': $borderStyle,
            },
          ),
          builder: (args) => _i1.TabPageSelectorIndicator(
            key: args('key'),
            backgroundColor: args('backgroundColor'),
            borderColor: args('borderColor'),
            size: args('size'),
            borderStyle: args('borderStyle'),
          ),
        );
}

final class Tab extends Wrapper {
  @Goto(_i1.Tab.new)
  Tab({
    _i2.Key? key,
    String? text,
    _i3.Widget? icon,
    _i5.EdgeInsetsGeometry? iconMargin,
    double? height,
    _i3.Widget? child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with text
    Stream<String?>? $text,
    // Associate with icon
    Stream<_i3.Widget?>? $icon,
    // Associate with iconMargin
    Stream<_i5.EdgeInsetsGeometry?>? $iconMargin,
    // Associate with height
    Stream<double?>? $height,
    // Associate with child
    Stream<_i3.Widget?>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'text': text,
              'icon': icon,
              'iconMargin': iconMargin,
              'height': height,
              'child': child,
            },
            stream: {
              'key': $key,
              'text': $text,
              'icon': $icon,
              'iconMargin': $iconMargin,
              'height': $height,
              'child': $child,
            },
          ),
          builder: (args) => _i1.Tab(
            key: args('key'),
            text: args('text'),
            icon: args('icon'),
            iconMargin: args('iconMargin'),
            height: args('height'),
            child: args('child'),
          ),
        );
}
