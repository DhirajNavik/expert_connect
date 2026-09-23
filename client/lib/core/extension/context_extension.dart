import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;
  ThemeData get theme => Theme.of(this);
  Color get cardColor => theme.cardColor;
  ColorScheme get colorScheme => theme.colorScheme;
  Color get iconsColor => theme.colorScheme.onSurface;
  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;
  TextTheme get textTheme => theme.textTheme;
  InputDecorationThemeData  get textFieldTheme => theme.inputDecorationTheme;
}
