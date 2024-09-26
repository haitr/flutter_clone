library rxflutterify_binding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/material.dart' as _i1;
import 'package:flutter/painting.dart' as _i4;
import 'package:flutter/widgets.dart' as _i3;

import '../wrapper.dart';

final class Stepper extends Wrapper {
  @Goto(_i1.Stepper.new)
  Stepper(
    $ $config, {
    _i2.Key? key,
    required List<_i1.Step> steps,
    _i3.ScrollController? controller,
    _i3.ScrollPhysics? physics,
    _i1.StepperType type = _i1.StepperType.vertical,
    int currentStep = 0,
    _i2.ValueChanged<int>? onStepTapped,
    ui.VoidCallback? onStepContinue,
    ui.VoidCallback? onStepCancel,
    _i1.ControlsWidgetBuilder? controlsBuilder,
    double? elevation,
    _i4.EdgeInsetsGeometry? margin,
    _i3.WidgetStateProperty<ui.Color>? connectorColor,
    double? connectorThickness,
    _i1.StepIconBuilder? stepIconBuilder,
    double? stepIconHeight,
    double? stepIconWidth,
    _i4.EdgeInsets? stepIconMargin,
  }) : super(
          Argument({
            #key: key,
            #steps: steps,
            #controller: controller,
            #physics: physics,
            #type: type,
            #currentStep: currentStep,
            #onStepTapped: onStepTapped,
            #onStepContinue: onStepContinue,
            #onStepCancel: onStepCancel,
            #controlsBuilder: controlsBuilder,
            #elevation: elevation,
            #margin: margin,
            #connectorColor: connectorColor,
            #connectorThickness: connectorThickness,
            #stepIconBuilder: stepIconBuilder,
            #stepIconHeight: stepIconHeight,
            #stepIconWidth: stepIconWidth,
            #stepIconMargin: stepIconMargin,
          }),
          builder: (args) => _i1.Stepper(
            key: args(#key),
            steps: args(#steps),
            controller: args(#controller),
            physics: args(#physics),
            type: args(#type),
            currentStep: args(#currentStep),
            onStepTapped: args(#onStepTapped),
            onStepContinue: args(#onStepContinue),
            onStepCancel: args(#onStepCancel),
            controlsBuilder: args(#controlsBuilder),
            elevation: args(#elevation),
            margin: args(#margin),
            connectorColor: args(#connectorColor),
            connectorThickness: args(#connectorThickness),
            stepIconBuilder: args(#stepIconBuilder),
            stepIconHeight: args(#stepIconHeight),
            stepIconWidth: args(#stepIconWidth),
            stepIconMargin: args(#stepIconMargin),
          ),
        );
}
