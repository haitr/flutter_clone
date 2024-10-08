library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i7;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/rendering.dart' as _i5;
import 'package:flutter/services.dart' as _i6;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class SearchAnchor extends Wrapper {
  @Goto(_i1.SearchAnchor.new)
  SearchAnchor(
    $ $config, {
    _i2.Key? key,
    bool? isFullScreen,
    _i1.SearchController? searchController,
    _i1.ViewBuilder? viewBuilder,
    _i3.Widget? viewLeading,
    Iterable<_i3.Widget>? viewTrailing,
    String? viewHintText,
    ui.Color? viewBackgroundColor,
    double? viewElevation,
    ui.Color? viewSurfaceTintColor,
    _i4.BorderSide? viewSide,
    _i4.OutlinedBorder? viewShape,
    double? headerHeight,
    _i4.TextStyle? headerTextStyle,
    _i4.TextStyle? headerHintStyle,
    ui.Color? dividerColor,
    _i5.BoxConstraints? viewConstraints,
    _i6.TextCapitalization? textCapitalization,
    _i2.ValueChanged<String>? viewOnChanged,
    _i2.ValueChanged<String>? viewOnSubmitted,
    required _i1.SearchAnchorChildBuilder builder,
    required _i1.SuggestionsBuilder suggestionsBuilder,
    _i6.TextInputAction? textInputAction,
    _i6.TextInputType? keyboardType,
  }) : super(
          Argument({
            #key: key,
            #isFullScreen: isFullScreen,
            #searchController: searchController,
            #viewBuilder: viewBuilder,
            #viewLeading: viewLeading,
            #viewTrailing: viewTrailing,
            #viewHintText: viewHintText,
            #viewBackgroundColor: viewBackgroundColor,
            #viewElevation: viewElevation,
            #viewSurfaceTintColor: viewSurfaceTintColor,
            #viewSide: viewSide,
            #viewShape: viewShape,
            #headerHeight: headerHeight,
            #headerTextStyle: headerTextStyle,
            #headerHintStyle: headerHintStyle,
            #dividerColor: dividerColor,
            #viewConstraints: viewConstraints,
            #textCapitalization: textCapitalization,
            #viewOnChanged: viewOnChanged,
            #viewOnSubmitted: viewOnSubmitted,
            #builder: builder,
            #suggestionsBuilder: suggestionsBuilder,
            #textInputAction: textInputAction,
            #keyboardType: keyboardType,
          }),
          builder: (args) => _i1.SearchAnchor(
            key: args(#key),
            isFullScreen: args(#isFullScreen),
            searchController: args(#searchController),
            viewBuilder: args(#viewBuilder),
            viewLeading: args(#viewLeading),
            viewTrailing: args(#viewTrailing),
            viewHintText: args(#viewHintText),
            viewBackgroundColor: args(#viewBackgroundColor),
            viewElevation: args(#viewElevation),
            viewSurfaceTintColor: args(#viewSurfaceTintColor),
            viewSide: args(#viewSide),
            viewShape: args(#viewShape),
            headerHeight: args(#headerHeight),
            headerTextStyle: args(#headerTextStyle),
            headerHintStyle: args(#headerHintStyle),
            dividerColor: args(#dividerColor),
            viewConstraints: args(#viewConstraints),
            textCapitalization: args(#textCapitalization),
            viewOnChanged: args(#viewOnChanged),
            viewOnSubmitted: args(#viewOnSubmitted),
            builder: args(#builder),
            suggestionsBuilder: args(#suggestionsBuilder),
            textInputAction: args(#textInputAction),
            keyboardType: args(#keyboardType),
          ),
        );

  @Goto(_i1.SearchAnchor.bar)
  SearchAnchor.bar(
    $ $config, {
    _i3.Widget? barLeading,
    Iterable<_i3.Widget>? barTrailing,
    String? barHintText,
    _i7.GestureTapCallback? onTap,
    _i2.ValueChanged<String>? onSubmitted,
    _i2.ValueChanged<String>? onChanged,
    _i3.WidgetStateProperty<double?>? barElevation,
    _i3.WidgetStateProperty<ui.Color?>? barBackgroundColor,
    _i3.WidgetStateProperty<ui.Color?>? barOverlayColor,
    _i3.WidgetStateProperty<_i4.BorderSide?>? barSide,
    _i3.WidgetStateProperty<_i4.OutlinedBorder?>? barShape,
    _i3.WidgetStateProperty<_i4.EdgeInsetsGeometry?>? barPadding,
    _i3.WidgetStateProperty<_i4.TextStyle?>? barTextStyle,
    _i3.WidgetStateProperty<_i4.TextStyle?>? barHintStyle,
    _i3.Widget? viewLeading,
    Iterable<_i3.Widget>? viewTrailing,
    String? viewHintText,
    ui.Color? viewBackgroundColor,
    double? viewElevation,
    _i4.BorderSide? viewSide,
    _i4.OutlinedBorder? viewShape,
    double? viewHeaderHeight,
    _i4.TextStyle? viewHeaderTextStyle,
    _i4.TextStyle? viewHeaderHintStyle,
    ui.Color? dividerColor,
    _i5.BoxConstraints? constraints,
    _i5.BoxConstraints? viewConstraints,
    bool? isFullScreen,
    _i1.SearchController? searchController,
    _i6.TextCapitalization? textCapitalization,
    required _i1.SuggestionsBuilder suggestionsBuilder,
    _i6.TextInputAction? textInputAction,
    _i6.TextInputType? keyboardType,
  }) : super(
          Argument({
            #barLeading: barLeading,
            #barTrailing: barTrailing,
            #barHintText: barHintText,
            #onTap: onTap,
            #onSubmitted: onSubmitted,
            #onChanged: onChanged,
            #barElevation: barElevation,
            #barBackgroundColor: barBackgroundColor,
            #barOverlayColor: barOverlayColor,
            #barSide: barSide,
            #barShape: barShape,
            #barPadding: barPadding,
            #barTextStyle: barTextStyle,
            #barHintStyle: barHintStyle,
            #viewLeading: viewLeading,
            #viewTrailing: viewTrailing,
            #viewHintText: viewHintText,
            #viewBackgroundColor: viewBackgroundColor,
            #viewElevation: viewElevation,
            #viewSide: viewSide,
            #viewShape: viewShape,
            #viewHeaderHeight: viewHeaderHeight,
            #viewHeaderTextStyle: viewHeaderTextStyle,
            #viewHeaderHintStyle: viewHeaderHintStyle,
            #dividerColor: dividerColor,
            #constraints: constraints,
            #viewConstraints: viewConstraints,
            #isFullScreen: isFullScreen,
            #searchController: searchController,
            #textCapitalization: textCapitalization,
            #suggestionsBuilder: suggestionsBuilder,
            #textInputAction: textInputAction,
            #keyboardType: keyboardType,
          }),
          builder: (args) => _SearchAnchorWithSearchBar(
            barLeading: args(#barLeading),
            barTrailing: args(#barTrailing),
            barHintText: args(#barHintText),
            onTap: args(#onTap),
            onSubmitted: args(#onSubmitted),
            onChanged: args(#onChanged),
            barElevation: args(#barElevation),
            barBackgroundColor: args(#barBackgroundColor),
            barOverlayColor: args(#barOverlayColor),
            barSide: args(#barSide),
            barShape: args(#barShape),
            barPadding: args(#barPadding),
            barTextStyle: args(#barTextStyle),
            barHintStyle: args(#barHintStyle),
            viewLeading: args(#viewLeading),
            viewTrailing: args(#viewTrailing),
            viewHintText: args(#viewHintText),
            viewBackgroundColor: args(#viewBackgroundColor),
            viewElevation: args(#viewElevation),
            viewSide: args(#viewSide),
            viewShape: args(#viewShape),
            viewHeaderHeight: args(#viewHeaderHeight),
            viewHeaderTextStyle: args(#viewHeaderTextStyle),
            viewHeaderHintStyle: args(#viewHeaderHintStyle),
            dividerColor: args(#dividerColor),
            constraints: args(#constraints),
            viewConstraints: args(#viewConstraints),
            isFullScreen: args(#isFullScreen),
            searchController: args(#searchController),
            textCapitalization: args(#textCapitalization),
            suggestionsBuilder: args(#suggestionsBuilder),
            textInputAction: args(#textInputAction),
            keyboardType: args(#keyboardType),
          ),
        );
}

final class SearchBar extends Wrapper {
  @Goto(_i1.SearchBar.new)
  SearchBar(
    $ $config, {
    _i2.Key? key,
    _i3.TextEditingController? controller,
    _i3.FocusNode? focusNode,
    String? hintText,
    _i3.Widget? leading,
    Iterable<_i3.Widget>? trailing,
    _i7.GestureTapCallback? onTap,
    _i3.TapRegionCallback? onTapOutside,
    _i2.ValueChanged<String>? onChanged,
    _i2.ValueChanged<String>? onSubmitted,
    _i5.BoxConstraints? constraints,
    _i3.WidgetStateProperty<double?>? elevation,
    _i3.WidgetStateProperty<ui.Color?>? backgroundColor,
    _i3.WidgetStateProperty<ui.Color?>? shadowColor,
    _i3.WidgetStateProperty<ui.Color?>? surfaceTintColor,
    _i3.WidgetStateProperty<ui.Color?>? overlayColor,
    _i3.WidgetStateProperty<_i4.BorderSide?>? side,
    _i3.WidgetStateProperty<_i4.OutlinedBorder?>? shape,
    _i3.WidgetStateProperty<_i4.EdgeInsetsGeometry?>? padding,
    _i3.WidgetStateProperty<_i4.TextStyle?>? textStyle,
    _i3.WidgetStateProperty<_i4.TextStyle?>? hintStyle,
    _i6.TextCapitalization? textCapitalization,
    bool enabled = true,
    bool autoFocus = false,
    _i6.TextInputAction? textInputAction,
    _i6.TextInputType? keyboardType,
  }) : super(
          Argument({
            #key: key,
            #controller: controller,
            #focusNode: focusNode,
            #hintText: hintText,
            #leading: leading,
            #trailing: trailing,
            #onTap: onTap,
            #onTapOutside: onTapOutside,
            #onChanged: onChanged,
            #onSubmitted: onSubmitted,
            #constraints: constraints,
            #elevation: elevation,
            #backgroundColor: backgroundColor,
            #shadowColor: shadowColor,
            #surfaceTintColor: surfaceTintColor,
            #overlayColor: overlayColor,
            #side: side,
            #shape: shape,
            #padding: padding,
            #textStyle: textStyle,
            #hintStyle: hintStyle,
            #textCapitalization: textCapitalization,
            #enabled: enabled,
            #autoFocus: autoFocus,
            #textInputAction: textInputAction,
            #keyboardType: keyboardType,
          }),
          builder: (args) => _i1.SearchBar(
            key: args(#key),
            controller: args(#controller),
            focusNode: args(#focusNode),
            hintText: args(#hintText),
            leading: args(#leading),
            trailing: args(#trailing),
            onTap: args(#onTap),
            onTapOutside: args(#onTapOutside),
            onChanged: args(#onChanged),
            onSubmitted: args(#onSubmitted),
            constraints: args(#constraints),
            elevation: args(#elevation),
            backgroundColor: args(#backgroundColor),
            shadowColor: args(#shadowColor),
            surfaceTintColor: args(#surfaceTintColor),
            overlayColor: args(#overlayColor),
            side: args(#side),
            shape: args(#shape),
            padding: args(#padding),
            textStyle: args(#textStyle),
            hintStyle: args(#hintStyle),
            textCapitalization: args(#textCapitalization),
            enabled: args(#enabled),
            autoFocus: args(#autoFocus),
            textInputAction: args(#textInputAction),
            keyboardType: args(#keyboardType),
          ),
        );
}

class _SearchAnchorWithSearchBar extends _i1.SearchAnchor {
  _SearchAnchorWithSearchBar(
      {_i3.Widget? barLeading,
      Iterable<_i3.Widget>? barTrailing,
      String? barHintText,
      _i7.GestureTapCallback? onTap,
      _i1.MaterialStateProperty<double?>? barElevation,
      _i1.MaterialStateProperty<ui.Color?>? barBackgroundColor,
      _i1.MaterialStateProperty<ui.Color?>? barOverlayColor,
      _i1.MaterialStateProperty<_i4.BorderSide?>? barSide,
      _i1.MaterialStateProperty<_i4.OutlinedBorder?>? barShape,
      _i1.MaterialStateProperty<_i4.EdgeInsetsGeometry?>? barPadding,
      _i1.MaterialStateProperty<_i4.TextStyle?>? barTextStyle,
      _i1.MaterialStateProperty<_i4.TextStyle?>? barHintStyle,
      super.viewLeading,
      super.viewTrailing,
      String? viewHintText,
      super.viewBackgroundColor,
      super.viewElevation,
      super.viewSide,
      super.viewShape,
      double? viewHeaderHeight,
      _i4.TextStyle? viewHeaderTextStyle,
      _i4.TextStyle? viewHeaderHintStyle,
      super.dividerColor,
      _i5.BoxConstraints? constraints,
      super.viewConstraints,
      super.isFullScreen,
      super.searchController,
      super.textCapitalization,
      _i2.ValueChanged<String>? onChanged,
      _i2.ValueChanged<String>? onSubmitted,
      required super.suggestionsBuilder,
      super.textInputAction,
      super.keyboardType})
      : super(
            viewHintText: viewHintText ?? barHintText,
            headerHeight: viewHeaderHeight,
            headerTextStyle: viewHeaderTextStyle,
            headerHintStyle: viewHeaderHintStyle,
            viewOnSubmitted: onSubmitted,
            viewOnChanged: onChanged,
            builder: (_i3.BuildContext context, _i1.SearchController controller) {
              return _i1.SearchBar(
                  constraints: constraints,
                  controller: controller,
                  onTap: () {
                    controller.openView();
                    onTap?.call();
                  },
                  onChanged: (String value) {
                    controller.openView();
                  },
                  onSubmitted: onSubmitted,
                  hintText: barHintText,
                  hintStyle: barHintStyle,
                  textStyle: barTextStyle,
                  elevation: barElevation,
                  backgroundColor: barBackgroundColor,
                  overlayColor: barOverlayColor,
                  side: barSide,
                  shape: barShape,
                  padding: barPadding ?? const _i1.MaterialStatePropertyAll<_i4.EdgeInsets>(_i4.EdgeInsets.symmetric(horizontal: 16.0)),
                  leading: barLeading ?? const _i3.Icon(_i1.Icons.search),
                  trailing: barTrailing,
                  textCapitalization: textCapitalization,
                  textInputAction: textInputAction,
                  keyboardType: keyboardType);
            });
}
