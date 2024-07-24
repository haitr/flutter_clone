library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/services.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class Autocomplete<T extends Object> extends Wrapper {
  @Goto(_i1.Autocomplete.new)
  Autocomplete(
    $ $config, {
    _i2.Key? key,
    required _i3.AutocompleteOptionsBuilder<T> optionsBuilder,
    _i3.AutocompleteOptionToString<T> displayStringForOption = _i3.RawAutocomplete.defaultStringForOption,
    _i3.AutocompleteFieldViewBuilder fieldViewBuilder = _defaultFieldViewBuilder,
    _i3.AutocompleteOnSelected<T>? onSelected,
    double optionsMaxHeight = 200.0,
    _i3.AutocompleteOptionsViewBuilder<T>? optionsViewBuilder,
    _i3.OptionsViewOpenDirection optionsViewOpenDirection = _i3.OptionsViewOpenDirection.down,
    _i4.TextEditingValue? initialValue,
  }) : super(
          Argument({
            #key: key,
            #optionsBuilder: optionsBuilder,
            #displayStringForOption: displayStringForOption,
            #fieldViewBuilder: fieldViewBuilder,
            #onSelected: onSelected,
            #optionsMaxHeight: optionsMaxHeight,
            #optionsViewBuilder: optionsViewBuilder,
            #optionsViewOpenDirection: optionsViewOpenDirection,
            #initialValue: initialValue,
          }),
          builder: (args) => _i1.Autocomplete<T>(
            key: args(#key),
            optionsBuilder: args(#optionsBuilder),
            displayStringForOption: args(#displayStringForOption),
            fieldViewBuilder: args(#fieldViewBuilder),
            onSelected: args(#onSelected),
            optionsMaxHeight: args(#optionsMaxHeight),
            optionsViewBuilder: args(#optionsViewBuilder),
            optionsViewOpenDirection: args(#optionsViewOpenDirection),
            initialValue: args(#initialValue),
          ),
        );

  static _i3.Widget _defaultFieldViewBuilder(
    _i3.BuildContext context,
    _i3.TextEditingController textEditingController,
    _i3.FocusNode focusNode,
    ui.VoidCallback onFieldSubmitted,
  ) {
    return _AutocompleteField(focusNode: focusNode, textEditingController: textEditingController, onFieldSubmitted: onFieldSubmitted);
  }
}

class _AutocompleteField extends _i3.StatelessWidget {
  const _AutocompleteField({required this.focusNode, required this.textEditingController, required this.onFieldSubmitted});
  final _i3.FocusNode focusNode;
  final ui.VoidCallback onFieldSubmitted;
  final _i3.TextEditingController textEditingController;
  @override
  _i3.Widget build(_i3.BuildContext context) {
    return _i1.TextFormField(
        controller: textEditingController,
        focusNode: focusNode,
        onFieldSubmitted: (String value) {
          onFieldSubmitted();
        });
  }
}
