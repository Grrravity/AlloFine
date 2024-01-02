import 'package:allofine/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  Spacing get spacing => theme.spacing;

  ThemeRadius get radius => theme.radius;

  AppLocalizations get l10n => AppLocalizations.of(this);
}
