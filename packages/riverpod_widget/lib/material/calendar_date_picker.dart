library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/gestures.dart' as _i3;
import 'package:flutter/material.dart' as _i1;

import '../wrapper.dart';

final class CalendarDatePicker extends Wrapper {
  @Goto(_i1.CalendarDatePicker.new)
  CalendarDatePicker(
    $ $config, {
    _i2.Key? key,
    required DateTime? initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    required _i2.ValueChanged<DateTime> onDateChanged,
    _i2.ValueChanged<DateTime>? onDisplayedMonthChanged,
    _i1.DatePickerMode initialCalendarMode = _i1.DatePickerMode.day,
    _i1.SelectableDayPredicate? selectableDayPredicate,
  }) : super(
          Argument({
            #key: key,
            #initialDate: initialDate,
            #firstDate: firstDate,
            #lastDate: lastDate,
            #currentDate: currentDate,
            #onDateChanged: onDateChanged,
            #onDisplayedMonthChanged: onDisplayedMonthChanged,
            #initialCalendarMode: initialCalendarMode,
            #selectableDayPredicate: selectableDayPredicate,
          }),
          builder: (args) => _i1.CalendarDatePicker(
            key: args(#key),
            initialDate: args(#initialDate),
            firstDate: args(#firstDate),
            lastDate: args(#lastDate),
            currentDate: args(#currentDate),
            onDateChanged: args(#onDateChanged),
            onDisplayedMonthChanged: args(#onDisplayedMonthChanged),
            initialCalendarMode: args(#initialCalendarMode),
            selectableDayPredicate: args(#selectableDayPredicate),
          ),
        );
}

final class YearPicker extends Wrapper {
  @Goto(_i1.YearPicker.new)
  YearPicker(
    $ $config, {
    _i2.Key? key,
    DateTime? currentDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? initialDate,
    required DateTime? selectedDate,
    required _i2.ValueChanged<DateTime> onChanged,
    _i3.DragStartBehavior dragStartBehavior = _i3.DragStartBehavior.start,
  }) : super(
          Argument({
            #key: key,
            #currentDate: currentDate,
            #firstDate: firstDate,
            #lastDate: lastDate,
            #initialDate: initialDate,
            #selectedDate: selectedDate,
            #onChanged: onChanged,
            #dragStartBehavior: dragStartBehavior,
          }),
          builder: (args) => _i1.YearPicker(
            key: args(#key),
            currentDate: args(#currentDate),
            firstDate: args(#firstDate),
            lastDate: args(#lastDate),
            initialDate: args(#initialDate),
            selectedDate: args(#selectedDate),
            onChanged: args(#onChanged),
            dragStartBehavior: args(#dragStartBehavior),
          ),
        );
}
