import 'package:client/core/utils/dimens.dart';
import 'package:flutter/material.dart';

class AppNavigationTheme {
  AppNavigationTheme._();

  static NavigationBarThemeData from({required ColorScheme colorScheme}) {
    return NavigationBarThemeData(
      shadowColor: colorScheme.shadow,
      backgroundColor: colorScheme.primary,
      surfaceTintColor: Colors.transparent,
      elevation: Dimens.elevation,
    );
  }
}
