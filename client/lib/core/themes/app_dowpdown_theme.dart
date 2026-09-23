import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';

final class AppDropdownTheme {
  AppDropdownTheme._();

  static CustomDropdownDecoration from({
    required ColorScheme colorScheme,
    required TextTheme textTheme,
  }) {
    return CustomDropdownDecoration(
      // Text
      headerStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface,
      ),
      listItemStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface,
      ),
      hintStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
        fontWeight: FontWeight.w400,
      ),

      // Error
      errorStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.error,
        fontWeight: FontWeight.w400,
      ),

      // Closed
      closedFillColor: colorScheme.surface,
      closedBorderRadius: BorderRadius.circular(Dimens.radiusX2),
      closedBorder: _border(
        colorScheme.outline,
        radius: Dimens.radiusX2,
      ),
      closedErrorBorderRadius: BorderRadius.circular(
        Dimens.radiusX2,
      ),
      closedErrorBorder: _border(
        colorScheme.error,
        radius: Dimens.radiusX2,
      ),

      // Expanded
      expandedFillColor: colorScheme.surface,
      expandedBorderRadius: BorderRadius.circular(
        Dimens.radiusX2,
      ),
      expandedBorder: _border(
        colorScheme.onSurface,
        radius: Dimens.radiusX2,
      ),
    );
  }

  static Border _border(
    Color color, {
    required double radius,
    double width = 1,
  }) {
    return Border.fromBorderSide(
      BorderSide(
        color: color,
        width: width,
      ),
    );
  }
}