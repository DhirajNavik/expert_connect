import 'package:flutter/material.dart';
import 'package:client/core/utils/dimens.dart';

class AppProgressIndicatorThemeData {
  AppProgressIndicatorThemeData._();

  static ProgressIndicatorThemeData from({required ColorScheme colorScheme}) {
    return ProgressIndicatorThemeData(
      color: colorScheme.onPrimary,
      strokeWidth: Dimens.scaleXB
    );
  }
}
