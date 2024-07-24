library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class TimePickerDialog extends Wrapper {
  @Goto(_i1.TimePickerDialog.new)
  TimePickerDialog(
    $ $config, {
    _i2.Key? key,
    required _i1.TimeOfDay initialTime,
    String? cancelText,
    String? confirmText,
    String? helpText,
    String? errorInvalidText,
    String? hourLabelText,
    String? minuteLabelText,
    String? restorationId,
    _i1.TimePickerEntryMode initialEntryMode = _i1.TimePickerEntryMode.dial,
    _i3.Orientation? orientation,
    _i1.EntryModeChangeCallback? onEntryModeChanged,
  }) : super(
          Argument({
            #key: key,
            #initialTime: initialTime,
            #cancelText: cancelText,
            #confirmText: confirmText,
            #helpText: helpText,
            #errorInvalidText: errorInvalidText,
            #hourLabelText: hourLabelText,
            #minuteLabelText: minuteLabelText,
            #restorationId: restorationId,
            #initialEntryMode: initialEntryMode,
            #orientation: orientation,
            #onEntryModeChanged: onEntryModeChanged,
          }),
          builder: (args) => _i1.TimePickerDialog(
            key: args(#key),
            initialTime: args(#initialTime),
            cancelText: args(#cancelText),
            confirmText: args(#confirmText),
            helpText: args(#helpText),
            errorInvalidText: args(#errorInvalidText),
            hourLabelText: args(#hourLabelText),
            minuteLabelText: args(#minuteLabelText),
            restorationId: args(#restorationId),
            initialEntryMode: args(#initialEntryMode),
            orientation: args(#orientation),
            onEntryModeChanged: args(#onEntryModeChanged),
          ),
        );
}
