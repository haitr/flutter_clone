library rxflutter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart' as _i1;
import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/painting.dart' as _i3;

import '../wrapper.dart';

final class CupertinoDatePicker extends Wrapper {
  @Goto(_i1.CupertinoDatePicker.new)
  CupertinoDatePicker({
    _i2.Key? key,
    _i1.CupertinoDatePickerMode mode = _i1.CupertinoDatePickerMode.dateAndTime,
    required _i2.ValueChanged<DateTime> onDateTimeChanged,
    DateTime? initialDateTime,
    DateTime? minimumDate,
    DateTime? maximumDate,
    int minimumYear = 1,
    int? maximumYear,
    int minuteInterval = 1,
    bool use24hFormat = false,
    _i1.DatePickerDateOrder? dateOrder,
    ui.Color? backgroundColor,
    bool showDayOfWeek = false,
    double itemExtent = _kItemExtent,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with mode
    Stream<_i1.CupertinoDatePickerMode>? $mode,
    // Associate with onDateTimeChanged
    Stream<_i2.ValueChanged<DateTime>>? $onDateTimeChanged,
    // Associate with initialDateTime
    Stream<DateTime?>? $initialDateTime,
    // Associate with minimumDate
    Stream<DateTime?>? $minimumDate,
    // Associate with maximumDate
    Stream<DateTime?>? $maximumDate,
    // Associate with minimumYear
    Stream<int>? $minimumYear,
    // Associate with maximumYear
    Stream<int?>? $maximumYear,
    // Associate with minuteInterval
    Stream<int>? $minuteInterval,
    // Associate with use24hFormat
    Stream<bool>? $use24hFormat,
    // Associate with dateOrder
    Stream<_i1.DatePickerDateOrder?>? $dateOrder,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with showDayOfWeek
    Stream<bool>? $showDayOfWeek,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
  }) : super(
          Argument(
            {
              'key': key,
              'mode': mode,
              'onDateTimeChanged': onDateTimeChanged,
              'initialDateTime': initialDateTime,
              'minimumDate': minimumDate,
              'maximumDate': maximumDate,
              'minimumYear': minimumYear,
              'maximumYear': maximumYear,
              'minuteInterval': minuteInterval,
              'use24hFormat': use24hFormat,
              'dateOrder': dateOrder,
              'backgroundColor': backgroundColor,
              'showDayOfWeek': showDayOfWeek,
              'itemExtent': itemExtent,
            },
            stream: {
              'key': $key,
              'mode': $mode,
              'onDateTimeChanged': $onDateTimeChanged,
              'initialDateTime': $initialDateTime,
              'minimumDate': $minimumDate,
              'maximumDate': $maximumDate,
              'minimumYear': $minimumYear,
              'maximumYear': $maximumYear,
              'minuteInterval': $minuteInterval,
              'use24hFormat': $use24hFormat,
              'dateOrder': $dateOrder,
              'backgroundColor': $backgroundColor,
              'showDayOfWeek': $showDayOfWeek,
              'itemExtent': $itemExtent,
            },
          ),
          builder: (args) => _i1.CupertinoDatePicker(
            key: args('key'),
            mode: args('mode'),
            onDateTimeChanged: args('onDateTimeChanged'),
            initialDateTime: args('initialDateTime'),
            minimumDate: args('minimumDate'),
            maximumDate: args('maximumDate'),
            minimumYear: args('minimumYear'),
            maximumYear: args('maximumYear'),
            minuteInterval: args('minuteInterval'),
            use24hFormat: args('use24hFormat'),
            dateOrder: args('dateOrder'),
            backgroundColor: args('backgroundColor'),
            showDayOfWeek: args('showDayOfWeek'),
            itemExtent: args('itemExtent'),
          ),
        );
}

final class CupertinoTimerPicker extends Wrapper {
  @Goto(_i1.CupertinoTimerPicker.new)
  CupertinoTimerPicker({
    _i2.Key? key,
    _i1.CupertinoTimerPickerMode mode = _i1.CupertinoTimerPickerMode.hms,
    Duration initialTimerDuration = Duration.zero,
    int minuteInterval = 1,
    int secondInterval = 1,
    _i3.AlignmentGeometry alignment = _i3.Alignment.center,
    ui.Color? backgroundColor,
    double itemExtent = _kItemExtent,
    required _i2.ValueChanged<Duration> onTimerDurationChanged,
    // Associate with key
    Stream<_i2.Key?>? $key,
    // Associate with mode
    Stream<_i1.CupertinoTimerPickerMode>? $mode,
    // Associate with initialTimerDuration
    Stream<Duration>? $initialTimerDuration,
    // Associate with minuteInterval
    Stream<int>? $minuteInterval,
    // Associate with secondInterval
    Stream<int>? $secondInterval,
    // Associate with alignment
    Stream<_i3.AlignmentGeometry>? $alignment,
    // Associate with backgroundColor
    Stream<ui.Color?>? $backgroundColor,
    // Associate with itemExtent
    Stream<double>? $itemExtent,
    // Associate with onTimerDurationChanged
    Stream<_i2.ValueChanged<Duration>>? $onTimerDurationChanged,
  }) : super(
          Argument(
            {
              'key': key,
              'mode': mode,
              'initialTimerDuration': initialTimerDuration,
              'minuteInterval': minuteInterval,
              'secondInterval': secondInterval,
              'alignment': alignment,
              'backgroundColor': backgroundColor,
              'itemExtent': itemExtent,
              'onTimerDurationChanged': onTimerDurationChanged,
            },
            stream: {
              'key': $key,
              'mode': $mode,
              'initialTimerDuration': $initialTimerDuration,
              'minuteInterval': $minuteInterval,
              'secondInterval': $secondInterval,
              'alignment': $alignment,
              'backgroundColor': $backgroundColor,
              'itemExtent': $itemExtent,
              'onTimerDurationChanged': $onTimerDurationChanged,
            },
          ),
          builder: (args) => _i1.CupertinoTimerPicker(
            key: args('key'),
            mode: args('mode'),
            initialTimerDuration: args('initialTimerDuration'),
            minuteInterval: args('minuteInterval'),
            secondInterval: args('secondInterval'),
            alignment: args('alignment'),
            backgroundColor: args('backgroundColor'),
            itemExtent: args('itemExtent'),
            onTimerDurationChanged: args('onTimerDurationChanged'),
          ),
        );
}

const double _kItemExtent = 32.0;
