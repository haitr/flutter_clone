library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class InputDatePickerFormField extends Wrapper {
  @Goto(_i1.InputDatePickerFormField.new)
  InputDatePickerFormField({
    _i2.Key? key,
    DateTime? initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    _i2.ValueChanged<DateTime>? onDateSubmitted,
    _i2.ValueChanged<DateTime>? onDateSaved,
    _i1.SelectableDayPredicate? selectableDayPredicate,
    String? errorFormatText,
    String? errorInvalidText,
    String? fieldHintText,
    String? fieldLabelText,
    _i3.TextInputType? keyboardType,
    bool autofocus = false,
    bool acceptEmptyDate = false,
    _i4.FocusNode? focusNode,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with initialDate
    Stream<DateTime?>? $initialDate,
    // Associate with firstDate
    Stream<DateTime>? $firstDate,
    // Associate with lastDate
    Stream<DateTime>? $lastDate,
    // Associate with onDateSubmitted
    Stream<_i2.ValueChanged<DateTime>?>? $onDateSubmitted,
    // Associate with onDateSaved
    Stream<_i2.ValueChanged<DateTime>?>? $onDateSaved,
    // Associate with selectableDayPredicate
    Stream<_i1.SelectableDayPredicate?>? $selectableDayPredicate,
    // Associate with errorFormatText
    Stream<String?>? $errorFormatText,
    // Associate with errorInvalidText
    Stream<String?>? $errorInvalidText,
    // Associate with fieldHintText
    Stream<String?>? $fieldHintText,
    // Associate with fieldLabelText
    Stream<String?>? $fieldLabelText,
    // Associate with keyboardType
    Stream<_i3.TextInputType?>? $keyboardType,
    // Associate with autofocus
    Stream<bool>? $autofocus,
    // Associate with acceptEmptyDate
    Stream<bool>? $acceptEmptyDate,
    // Associate with focusNode
    Stream<_i4.FocusNode?>? $focusNode,
  }) : super(
          Argument(
            {
              'key': key,
              'initialDate': initialDate,
              'firstDate': firstDate,
              'lastDate': lastDate,
              'onDateSubmitted': onDateSubmitted,
              'onDateSaved': onDateSaved,
              'selectableDayPredicate': selectableDayPredicate,
              'errorFormatText': errorFormatText,
              'errorInvalidText': errorInvalidText,
              'fieldHintText': fieldHintText,
              'fieldLabelText': fieldLabelText,
              'keyboardType': keyboardType,
              'autofocus': autofocus,
              'acceptEmptyDate': acceptEmptyDate,
              'focusNode': focusNode,
            },
            stream: {
              'key': $key,
              'initialDate': $initialDate,
              'firstDate': $firstDate,
              'lastDate': $lastDate,
              'onDateSubmitted': $onDateSubmitted,
              'onDateSaved': $onDateSaved,
              'selectableDayPredicate': $selectableDayPredicate,
              'errorFormatText': $errorFormatText,
              'errorInvalidText': $errorInvalidText,
              'fieldHintText': $fieldHintText,
              'fieldLabelText': $fieldLabelText,
              'keyboardType': $keyboardType,
              'autofocus': $autofocus,
              'acceptEmptyDate': $acceptEmptyDate,
              'focusNode': $focusNode,
            },
          ),
          builder: (args) => _i1.InputDatePickerFormField(
            key: args('key'),
            initialDate: args('initialDate'),
            firstDate: args('firstDate'),
            lastDate: args('lastDate'),
            onDateSubmitted: args('onDateSubmitted'),
            onDateSaved: args('onDateSaved'),
            selectableDayPredicate: args('selectableDayPredicate'),
            errorFormatText: args('errorFormatText'),
            errorInvalidText: args('errorInvalidText'),
            fieldHintText: args('fieldHintText'),
            fieldLabelText: args('fieldLabelText'),
            keyboardType: args('keyboardType'),
            autofocus: args('autofocus'),
            acceptEmptyDate: args('acceptEmptyDate'),
            focusNode: args('focusNode'),
          ),
        );
}
