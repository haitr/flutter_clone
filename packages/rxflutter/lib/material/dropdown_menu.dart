library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/services.dart' as _i5;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class DropdownMenu<T> extends Wrapper {
  @Goto(_i1.DropdownMenu.new)
  DropdownMenu({
    _i2.Key? key,
    bool enabled = true,
    double? width,
    double? menuHeight,
    _i3.Widget? leadingIcon,
    _i3.Widget? trailingIcon,
    _i3.Widget? label,
    String? hintText,
    String? helperText,
    String? errorText,
    _i3.Widget? selectedTrailingIcon,
    bool enableFilter = false,
    bool enableSearch = true,
    _i4.TextStyle? textStyle,
    _i1.InputDecorationTheme? inputDecorationTheme,
    _i1.MenuStyle? menuStyle,
    _i3.TextEditingController? controller,
    T? initialSelection,
    _i2.ValueChanged<T?>? onSelected,
    _i3.FocusNode? focusNode,
    bool? requestFocusOnTap,
    _i4.EdgeInsets? expandedInsets,
    _i1.SearchCallback<T>? searchCallback,
    required List<_i1.DropdownMenuEntry<T>> dropdownMenuEntries,
    List<_i5.TextInputFormatter>? inputFormatters,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with enabled
    Stream<bool>? $enabled,
    // Associate with width
    Stream<double?>? $width,
    // Associate with menuHeight
    Stream<double?>? $menuHeight,
    // Associate with leadingIcon
    Stream<_i3.Widget?>? $leadingIcon,
    // Associate with trailingIcon
    Stream<_i3.Widget?>? $trailingIcon,
    // Associate with label
    Stream<_i3.Widget?>? $label,
    // Associate with hintText
    Stream<String?>? $hintText,
    // Associate with helperText
    Stream<String?>? $helperText,
    // Associate with errorText
    Stream<String?>? $errorText,
    // Associate with selectedTrailingIcon
    Stream<_i3.Widget?>? $selectedTrailingIcon,
    // Associate with enableFilter
    Stream<bool>? $enableFilter,
    // Associate with enableSearch
    Stream<bool>? $enableSearch,
    // Associate with textStyle
    Stream<_i4.TextStyle?>? $textStyle,
    // Associate with inputDecorationTheme
    Stream<_i1.InputDecorationTheme?>? $inputDecorationTheme,
    // Associate with menuStyle
    Stream<_i1.MenuStyle?>? $menuStyle,
    // Associate with controller
    Stream<_i3.TextEditingController?>? $controller,
    // Associate with initialSelection
    Stream<T?>? $initialSelection,
    // Associate with onSelected
    Stream<_i2.ValueChanged<T?>?>? $onSelected,
    // Associate with focusNode
    Stream<_i3.FocusNode?>? $focusNode,
    // Associate with requestFocusOnTap
    Stream<bool?>? $requestFocusOnTap,
    // Associate with expandedInsets
    Stream<_i4.EdgeInsets?>? $expandedInsets,
    // Associate with searchCallback
    Stream<_i1.SearchCallback<T>?>? $searchCallback,
    // Associate with dropdownMenuEntries
    Stream<List<_i1.DropdownMenuEntry<T>>>? $dropdownMenuEntries,
    // Associate with inputFormatters
    Stream<List<_i5.TextInputFormatter>?>? $inputFormatters,
  }) : super(
          Argument(
            {
              'key': key,
              'enabled': enabled,
              'width': width,
              'menuHeight': menuHeight,
              'leadingIcon': leadingIcon,
              'trailingIcon': trailingIcon,
              'label': label,
              'hintText': hintText,
              'helperText': helperText,
              'errorText': errorText,
              'selectedTrailingIcon': selectedTrailingIcon,
              'enableFilter': enableFilter,
              'enableSearch': enableSearch,
              'textStyle': textStyle,
              'inputDecorationTheme': inputDecorationTheme,
              'menuStyle': menuStyle,
              'controller': controller,
              'initialSelection': initialSelection,
              'onSelected': onSelected,
              'focusNode': focusNode,
              'requestFocusOnTap': requestFocusOnTap,
              'expandedInsets': expandedInsets,
              'searchCallback': searchCallback,
              'dropdownMenuEntries': dropdownMenuEntries,
              'inputFormatters': inputFormatters,
            },
            stream: {
              'key': $key,
              'enabled': $enabled,
              'width': $width,
              'menuHeight': $menuHeight,
              'leadingIcon': $leadingIcon,
              'trailingIcon': $trailingIcon,
              'label': $label,
              'hintText': $hintText,
              'helperText': $helperText,
              'errorText': $errorText,
              'selectedTrailingIcon': $selectedTrailingIcon,
              'enableFilter': $enableFilter,
              'enableSearch': $enableSearch,
              'textStyle': $textStyle,
              'inputDecorationTheme': $inputDecorationTheme,
              'menuStyle': $menuStyle,
              'controller': $controller,
              'initialSelection': $initialSelection,
              'onSelected': $onSelected,
              'focusNode': $focusNode,
              'requestFocusOnTap': $requestFocusOnTap,
              'expandedInsets': $expandedInsets,
              'searchCallback': $searchCallback,
              'dropdownMenuEntries': $dropdownMenuEntries,
              'inputFormatters': $inputFormatters,
            },
          ),
          builder: (args) => _i1.DropdownMenu<T>(
            key: args('key'),
            enabled: args('enabled'),
            width: args('width'),
            menuHeight: args('menuHeight'),
            leadingIcon: args('leadingIcon'),
            trailingIcon: args('trailingIcon'),
            label: args('label'),
            hintText: args('hintText'),
            helperText: args('helperText'),
            errorText: args('errorText'),
            selectedTrailingIcon: args('selectedTrailingIcon'),
            enableFilter: args('enableFilter'),
            enableSearch: args('enableSearch'),
            textStyle: args('textStyle'),
            inputDecorationTheme: args('inputDecorationTheme'),
            menuStyle: args('menuStyle'),
            controller: args('controller'),
            initialSelection: args('initialSelection'),
            onSelected: args('onSelected'),
            focusNode: args('focusNode'),
            requestFocusOnTap: args('requestFocusOnTap'),
            expandedInsets: args('expandedInsets'),
            searchCallback: args('searchCallback'),
            dropdownMenuEntries: args('dropdownMenuEntries'),
            inputFormatters: args('inputFormatters'),
          ),
        );
}
