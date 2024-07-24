library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/services.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../wrapper.dart';

final class DateRangePickerDialog extends Wrapper {
  @Goto(_i1.DateRangePickerDialog.new)
  DateRangePickerDialog({
    _i2.Key? key,
    _i1.DateTimeRange? initialDateRange,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    _i1.DatePickerEntryMode initialEntryMode = _i1.DatePickerEntryMode.calendar,
    String? helpText,
    String? cancelText,
    String? confirmText,
    String? saveText,
    String? errorInvalidRangeText,
    String? errorFormatText,
    String? errorInvalidText,
    String? fieldStartHintText,
    String? fieldEndHintText,
    String? fieldStartLabelText,
    String? fieldEndLabelText,
    _i3.TextInputType keyboardType = _i3.TextInputType.datetime,
    String? restorationId,
    _i4.Icon? switchToInputEntryModeIcon,
    _i4.Icon? switchToCalendarEntryModeIcon,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with initialDateRange
    Stream<_i1.DateTimeRange?>? $initialDateRange,
    // Associate with firstDate
    Stream<DateTime>? $firstDate,
    // Associate with lastDate
    Stream<DateTime>? $lastDate,
    // Associate with currentDate
    Stream<DateTime?>? $currentDate,
    // Associate with initialEntryMode
    Stream<_i1.DatePickerEntryMode>? $initialEntryMode,
    // Associate with helpText
    Stream<String?>? $helpText,
    // Associate with cancelText
    Stream<String?>? $cancelText,
    // Associate with confirmText
    Stream<String?>? $confirmText,
    // Associate with saveText
    Stream<String?>? $saveText,
    // Associate with errorInvalidRangeText
    Stream<String?>? $errorInvalidRangeText,
    // Associate with errorFormatText
    Stream<String?>? $errorFormatText,
    // Associate with errorInvalidText
    Stream<String?>? $errorInvalidText,
    // Associate with fieldStartHintText
    Stream<String?>? $fieldStartHintText,
    // Associate with fieldEndHintText
    Stream<String?>? $fieldEndHintText,
    // Associate with fieldStartLabelText
    Stream<String?>? $fieldStartLabelText,
    // Associate with fieldEndLabelText
    Stream<String?>? $fieldEndLabelText,
    // Associate with keyboardType
    Stream<_i3.TextInputType>? $keyboardType,
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with switchToInputEntryModeIcon
    Stream<_i4.Icon?>? $switchToInputEntryModeIcon,
    // Associate with switchToCalendarEntryModeIcon
    Stream<_i4.Icon?>? $switchToCalendarEntryModeIcon,
  }) : super(
          Argument(
            {
              'key': key,
              'initialDateRange': initialDateRange,
              'firstDate': firstDate,
              'lastDate': lastDate,
              'currentDate': currentDate,
              'initialEntryMode': initialEntryMode,
              'helpText': helpText,
              'cancelText': cancelText,
              'confirmText': confirmText,
              'saveText': saveText,
              'errorInvalidRangeText': errorInvalidRangeText,
              'errorFormatText': errorFormatText,
              'errorInvalidText': errorInvalidText,
              'fieldStartHintText': fieldStartHintText,
              'fieldEndHintText': fieldEndHintText,
              'fieldStartLabelText': fieldStartLabelText,
              'fieldEndLabelText': fieldEndLabelText,
              'keyboardType': keyboardType,
              'restorationId': restorationId,
              'switchToInputEntryModeIcon': switchToInputEntryModeIcon,
              'switchToCalendarEntryModeIcon': switchToCalendarEntryModeIcon,
            },
            stream: {
              'key': $key,
              'initialDateRange': $initialDateRange,
              'firstDate': $firstDate,
              'lastDate': $lastDate,
              'currentDate': $currentDate,
              'initialEntryMode': $initialEntryMode,
              'helpText': $helpText,
              'cancelText': $cancelText,
              'confirmText': $confirmText,
              'saveText': $saveText,
              'errorInvalidRangeText': $errorInvalidRangeText,
              'errorFormatText': $errorFormatText,
              'errorInvalidText': $errorInvalidText,
              'fieldStartHintText': $fieldStartHintText,
              'fieldEndHintText': $fieldEndHintText,
              'fieldStartLabelText': $fieldStartLabelText,
              'fieldEndLabelText': $fieldEndLabelText,
              'keyboardType': $keyboardType,
              'restorationId': $restorationId,
              'switchToInputEntryModeIcon': $switchToInputEntryModeIcon,
              'switchToCalendarEntryModeIcon': $switchToCalendarEntryModeIcon,
            },
          ),
          builder: (args) => _i1.DateRangePickerDialog(
            key: args('key'),
            initialDateRange: args('initialDateRange'),
            firstDate: args('firstDate'),
            lastDate: args('lastDate'),
            currentDate: args('currentDate'),
            initialEntryMode: args('initialEntryMode'),
            helpText: args('helpText'),
            cancelText: args('cancelText'),
            confirmText: args('confirmText'),
            saveText: args('saveText'),
            errorInvalidRangeText: args('errorInvalidRangeText'),
            errorFormatText: args('errorFormatText'),
            errorInvalidText: args('errorInvalidText'),
            fieldStartHintText: args('fieldStartHintText'),
            fieldEndHintText: args('fieldEndHintText'),
            fieldStartLabelText: args('fieldStartLabelText'),
            fieldEndLabelText: args('fieldEndLabelText'),
            keyboardType: args('keyboardType'),
            restorationId: args('restorationId'),
            switchToInputEntryModeIcon: args('switchToInputEntryModeIcon'),
            switchToCalendarEntryModeIcon: args('switchToCalendarEntryModeIcon'),
          ),
        );
}

final class DatePickerDialog extends Wrapper {
  @Goto(_i1.DatePickerDialog.new)
  DatePickerDialog({
    _i2.Key? key,
    DateTime? initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    _i1.DatePickerEntryMode initialEntryMode = _i1.DatePickerEntryMode.calendar,
    _i1.SelectableDayPredicate? selectableDayPredicate,
    String? cancelText,
    String? confirmText,
    String? helpText,
    _i1.DatePickerMode initialCalendarMode = _i1.DatePickerMode.day,
    String? errorFormatText,
    String? errorInvalidText,
    String? fieldHintText,
    String? fieldLabelText,
    _i3.TextInputType? keyboardType,
    String? restorationId,
    _i2.ValueChanged<_i1.DatePickerEntryMode>? onDatePickerModeChange,
    _i4.Icon? switchToInputEntryModeIcon,
    _i4.Icon? switchToCalendarEntryModeIcon,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with initialDate
    Stream<DateTime?>? $initialDate,
    // Associate with firstDate
    Stream<DateTime>? $firstDate,
    // Associate with lastDate
    Stream<DateTime>? $lastDate,
    // Associate with currentDate
    Stream<DateTime?>? $currentDate,
    // Associate with initialEntryMode
    Stream<_i1.DatePickerEntryMode>? $initialEntryMode,
    // Associate with selectableDayPredicate
    Stream<_i1.SelectableDayPredicate?>? $selectableDayPredicate,
    // Associate with cancelText
    Stream<String?>? $cancelText,
    // Associate with confirmText
    Stream<String?>? $confirmText,
    // Associate with helpText
    Stream<String?>? $helpText,
    // Associate with initialCalendarMode
    Stream<_i1.DatePickerMode>? $initialCalendarMode,
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
    // Associate with restorationId
    Stream<String?>? $restorationId,
    // Associate with onDatePickerModeChange
    Stream<_i2.ValueChanged<_i1.DatePickerEntryMode>?>? $onDatePickerModeChange,
    // Associate with switchToInputEntryModeIcon
    Stream<_i4.Icon?>? $switchToInputEntryModeIcon,
    // Associate with switchToCalendarEntryModeIcon
    Stream<_i4.Icon?>? $switchToCalendarEntryModeIcon,
  }) : super(
          Argument(
            {
              'key': key,
              'initialDate': initialDate,
              'firstDate': firstDate,
              'lastDate': lastDate,
              'currentDate': currentDate,
              'initialEntryMode': initialEntryMode,
              'selectableDayPredicate': selectableDayPredicate,
              'cancelText': cancelText,
              'confirmText': confirmText,
              'helpText': helpText,
              'initialCalendarMode': initialCalendarMode,
              'errorFormatText': errorFormatText,
              'errorInvalidText': errorInvalidText,
              'fieldHintText': fieldHintText,
              'fieldLabelText': fieldLabelText,
              'keyboardType': keyboardType,
              'restorationId': restorationId,
              'onDatePickerModeChange': onDatePickerModeChange,
              'switchToInputEntryModeIcon': switchToInputEntryModeIcon,
              'switchToCalendarEntryModeIcon': switchToCalendarEntryModeIcon,
            },
            stream: {
              'key': $key,
              'initialDate': $initialDate,
              'firstDate': $firstDate,
              'lastDate': $lastDate,
              'currentDate': $currentDate,
              'initialEntryMode': $initialEntryMode,
              'selectableDayPredicate': $selectableDayPredicate,
              'cancelText': $cancelText,
              'confirmText': $confirmText,
              'helpText': $helpText,
              'initialCalendarMode': $initialCalendarMode,
              'errorFormatText': $errorFormatText,
              'errorInvalidText': $errorInvalidText,
              'fieldHintText': $fieldHintText,
              'fieldLabelText': $fieldLabelText,
              'keyboardType': $keyboardType,
              'restorationId': $restorationId,
              'onDatePickerModeChange': $onDatePickerModeChange,
              'switchToInputEntryModeIcon': $switchToInputEntryModeIcon,
              'switchToCalendarEntryModeIcon': $switchToCalendarEntryModeIcon,
            },
          ),
          builder: (args) => _i1.DatePickerDialog(
            key: args('key'),
            initialDate: args('initialDate'),
            firstDate: args('firstDate'),
            lastDate: args('lastDate'),
            currentDate: args('currentDate'),
            initialEntryMode: args('initialEntryMode'),
            selectableDayPredicate: args('selectableDayPredicate'),
            cancelText: args('cancelText'),
            confirmText: args('confirmText'),
            helpText: args('helpText'),
            initialCalendarMode: args('initialCalendarMode'),
            errorFormatText: args('errorFormatText'),
            errorInvalidText: args('errorInvalidText'),
            fieldHintText: args('fieldHintText'),
            fieldLabelText: args('fieldLabelText'),
            keyboardType: args('keyboardType'),
            restorationId: args('restorationId'),
            onDatePickerModeChange: args('onDatePickerModeChange'),
            switchToInputEntryModeIcon: args('switchToInputEntryModeIcon'),
            switchToCalendarEntryModeIcon: args('switchToCalendarEntryModeIcon'),
          ),
        );
}
