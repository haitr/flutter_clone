library rxflutterify; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:ui' as ui;

import 'package:flutter/foundation.dart' as _i2;
import 'package:flutter/widgets.dart' as _i1;

import '../wrapper.dart';

final class Localizations extends Wrapper {
  @Goto(_i1.Localizations.new)
  Localizations(
    $ $config, {
    _i2.Key? key,
    required ui.Locale locale,
    required List<_i1.LocalizationsDelegate<dynamic>> delegates,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #locale: locale,
            #delegates: delegates,
            #child: child,
          }),
          builder: (args) => _i1.Localizations(
            key: args(#key),
            locale: args(#locale),
            delegates: args(#delegates),
            child: args(#child),
          ),
        );

  @Goto(_i1.Localizations.override)
  Localizations.override(
    $ $config, {
    _i2.Key? key,
    required _i1.BuildContext context,
    ui.Locale? locale,
    List<_i1.LocalizationsDelegate<dynamic>>? delegates,
    _i1.Widget? child,
  }) : super(
          Argument({
            #key: key,
            #context: context,
            #locale: locale,
            #delegates: delegates,
            #child: child,
          }),
          builder: (args) => _i1.Localizations.override(
            key: args(#key),
            context: args(#context),
            locale: args(#locale),
            delegates: args(#delegates),
            child: args(#child),
          ),
        );
}
