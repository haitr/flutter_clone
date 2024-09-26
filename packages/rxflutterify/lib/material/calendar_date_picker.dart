library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i3;
import 'package:flutter/material.dart' as _i1;

import '../wrapper.dart';

final class CalendarDatePicker extends Wrapper {
  @Goto(_i1.CalendarDatePicker.new)
  CalendarDatePicker({
    _i2.Key? key,
    required DateTime? initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    required _i2.ValueChanged<DateTime> onDateChanged,
    _i2.ValueChanged<DateTime>? onDisplayedMonthChanged,
    _i1.DatePickerMode initialCalendarMode = _i1.DatePickerMode.day,
    _i1.SelectableDayPredicate? selectableDayPredicate,
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
    // Associate with onDateChanged
    Stream<_i2.ValueChanged<DateTime>>? $onDateChanged,
    // Associate with onDisplayedMonthChanged
    Stream<_i2.ValueChanged<DateTime>?>? $onDisplayedMonthChanged,
    // Associate with initialCalendarMode
    Stream<_i1.DatePickerMode>? $initialCalendarMode,
    // Associate with selectableDayPredicate
    Stream<_i1.SelectableDayPredicate?>? $selectableDayPredicate,
  }) : super(
          Argument(
            {
              'key': key,
              'initialDate': initialDate,
              'firstDate': firstDate,
              'lastDate': lastDate,
              'currentDate': currentDate,
              'onDateChanged': onDateChanged,
              'onDisplayedMonthChanged': onDisplayedMonthChanged,
              'initialCalendarMode': initialCalendarMode,
              'selectableDayPredicate': selectableDayPredicate,
            },
            stream: {
              'key': $key,
              'initialDate': $initialDate,
              'firstDate': $firstDate,
              'lastDate': $lastDate,
              'currentDate': $currentDate,
              'onDateChanged': $onDateChanged,
              'onDisplayedMonthChanged': $onDisplayedMonthChanged,
              'initialCalendarMode': $initialCalendarMode,
              'selectableDayPredicate': $selectableDayPredicate,
            },
          ),
          builder: (args) => _i1.CalendarDatePicker(
            key: args('key'),
            initialDate: args('initialDate'),
            firstDate: args('firstDate'),
            lastDate: args('lastDate'),
            currentDate: args('currentDate'),
            onDateChanged: args('onDateChanged'),
            onDisplayedMonthChanged: args('onDisplayedMonthChanged'),
            initialCalendarMode: args('initialCalendarMode'),
            selectableDayPredicate: args('selectableDayPredicate'),
          ),
        );
}

final class YearPicker extends Wrapper {
  @Goto(_i1.YearPicker.new)
  YearPicker({
    _i2.Key? key,
    DateTime? currentDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? initialDate,
    required DateTime? selectedDate,
    required _i2.ValueChanged<DateTime> onChanged,
    _i3.DragStartBehavior dragStartBehavior = _i3.DragStartBehavior.start,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with currentDate
    Stream<DateTime?>? $currentDate,
    // Associate with firstDate
    Stream<DateTime>? $firstDate,
    // Associate with lastDate
    Stream<DateTime>? $lastDate,
    // Associate with initialDate
    Stream<DateTime?>? $initialDate,
    // Associate with selectedDate
    Stream<DateTime?>? $selectedDate,
    // Associate with onChanged
    Stream<_i2.ValueChanged<DateTime>>? $onChanged,
    // Associate with dragStartBehavior
    Stream<_i3.DragStartBehavior>? $dragStartBehavior,
  }) : super(
          Argument(
            {
              'key': key,
              'currentDate': currentDate,
              'firstDate': firstDate,
              'lastDate': lastDate,
              'initialDate': initialDate,
              'selectedDate': selectedDate,
              'onChanged': onChanged,
              'dragStartBehavior': dragStartBehavior,
            },
            stream: {
              'key': $key,
              'currentDate': $currentDate,
              'firstDate': $firstDate,
              'lastDate': $lastDate,
              'initialDate': $initialDate,
              'selectedDate': $selectedDate,
              'onChanged': $onChanged,
              'dragStartBehavior': $dragStartBehavior,
            },
          ),
          builder: (args) => _i1.YearPicker(
            key: args('key'),
            currentDate: args('currentDate'),
            firstDate: args('firstDate'),
            lastDate: args('lastDate'),
            initialDate: args('initialDate'),
            selectedDate: args('selectedDate'),
            onChanged: args('onChanged'),
            dragStartBehavior: args('dragStartBehavior'),
          ),
        );
}
