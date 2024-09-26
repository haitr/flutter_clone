library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class RawAutocomplete<T extends Object> extends Wrapper {
  @Goto(_i1.RawAutocomplete.new)
  RawAutocomplete({
    _i2.Key? key,
    required _i1.AutocompleteOptionsViewBuilder<T> optionsViewBuilder,
    required _i1.AutocompleteOptionsBuilder<T> optionsBuilder,
    _i1.OptionsViewOpenDirection optionsViewOpenDirection = _i1.OptionsViewOpenDirection.down,
    _i1.AutocompleteOptionToString<T> displayStringForOption = _i1.RawAutocomplete.defaultStringForOption,
    _i1.AutocompleteFieldViewBuilder? fieldViewBuilder,
    _i1.FocusNode? focusNode,
    _i1.AutocompleteOnSelected<T>? onSelected,
    _i1.TextEditingController? textEditingController,
    _i3.TextEditingValue? initialValue,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with optionsViewBuilder
    Stream<_i1.AutocompleteOptionsViewBuilder<T>>? $optionsViewBuilder,
    // Associate with optionsBuilder
    Stream<_i1.AutocompleteOptionsBuilder<T>>? $optionsBuilder,
    // Associate with optionsViewOpenDirection
    Stream<_i1.OptionsViewOpenDirection>? $optionsViewOpenDirection,
    // Associate with displayStringForOption
    Stream<_i1.AutocompleteOptionToString<T>>? $displayStringForOption,
    // Associate with fieldViewBuilder
    Stream<_i1.AutocompleteFieldViewBuilder?>? $fieldViewBuilder,
    // Associate with focusNode
    Stream<_i1.FocusNode?>? $focusNode,
    // Associate with onSelected
    Stream<_i1.AutocompleteOnSelected<T>?>? $onSelected,
    // Associate with textEditingController
    Stream<_i1.TextEditingController?>? $textEditingController,
    // Associate with initialValue
    Stream<_i3.TextEditingValue?>? $initialValue,
  }) : super(
          Argument(
            {
              'key': key,
              'optionsViewBuilder': optionsViewBuilder,
              'optionsBuilder': optionsBuilder,
              'optionsViewOpenDirection': optionsViewOpenDirection,
              'displayStringForOption': displayStringForOption,
              'fieldViewBuilder': fieldViewBuilder,
              'focusNode': focusNode,
              'onSelected': onSelected,
              'textEditingController': textEditingController,
              'initialValue': initialValue,
            },
            stream: {
              'key': $key,
              'optionsViewBuilder': $optionsViewBuilder,
              'optionsBuilder': $optionsBuilder,
              'optionsViewOpenDirection': $optionsViewOpenDirection,
              'displayStringForOption': $displayStringForOption,
              'fieldViewBuilder': $fieldViewBuilder,
              'focusNode': $focusNode,
              'onSelected': $onSelected,
              'textEditingController': $textEditingController,
              'initialValue': $initialValue,
            },
          ),
          builder: (args) => _i1.RawAutocomplete<T>(
            key: args('key'),
            optionsViewBuilder: args('optionsViewBuilder'),
            optionsBuilder: args('optionsBuilder'),
            optionsViewOpenDirection: args('optionsViewOpenDirection'),
            displayStringForOption: args('displayStringForOption'),
            fieldViewBuilder: args('fieldViewBuilder'),
            focusNode: args('focusNode'),
            onSelected: args('onSelected'),
            textEditingController: args('textEditingController'),
            initialValue: args('initialValue'),
          ),
        );
}

final class AutocompleteHighlightedOption extends Wrapper {
  @Goto(_i1.AutocompleteHighlightedOption.new)
  AutocompleteHighlightedOption({
    _i2.Key? key,
    required _i2.ValueNotifier<int> highlightIndexNotifier,
    required _i1.Widget child,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with highlightIndexNotifier
    Stream<_i2.ValueNotifier<int>>? $highlightIndexNotifier,
    // Associate with child
    Stream<_i1.Widget>? $child,
  }) : super(
          Argument(
            {
              'key': key,
              'highlightIndexNotifier': highlightIndexNotifier,
              'child': child,
            },
            stream: {
              'key': $key,
              'highlightIndexNotifier': $highlightIndexNotifier,
              'child': $child,
            },
          ),
          builder: (args) => _i1.AutocompleteHighlightedOption(
            key: args('key'),
            highlightIndexNotifier: args('highlightIndexNotifier'),
            child: args('child'),
          ),
        );
}
