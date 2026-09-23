import 'package:client/core/utils/app_palettes.dart';
import 'package:flutter/material.dart';

BoxDecoration boxDecorationRoundedWithShadow(
  BuildContext context, {
  double radius = 0,
  bool disableBottomRadius = false,
  bool disabletopRadius = false,
  Color? backgroundColor,
  Color? shadowColor,
  double? blurRadius,
  double? spreadRadius,
  Offset offset = const Offset(0.0, 0.0),
  LinearGradient? gradient,
  BoxBorder? border,
}) {
  final colorScheme = Theme.of(context).colorScheme;

  return BoxDecoration(
    boxShadow: defaultBoxShadow(
      shadowColor: shadowColor ??
          colorScheme.shadow.withOpacityExt(0.2),
      blurRadius: blurRadius ?? 0.0,
      spreadRadius: spreadRadius ?? 0,
      offset: offset,
    ),
    color: backgroundColor ?? colorScheme.surface,
    gradient: gradient,
    borderRadius: disabletopRadius
        ? bottomRadius(radius)
        : disableBottomRadius
            ? topRadius(radius)
            : radiusAll(radius),
    border: border,
  );
}

/// Default box shadow
List<BoxShadow> defaultBoxShadow({
  Color? shadowColor,
  double? blurRadius,
  double? spreadRadius,
  Offset offset = const Offset(0.0, 0.0),
}) {
  return [
    BoxShadow(
      color: shadowColor ?? Colors.grey.withOpacityExt(0.2),
      blurRadius: blurRadius ?? 4.0,
      spreadRadius: spreadRadius ?? 1.0,
      offset: offset,
    ),
  ];
}

BorderRadius radiusAll([double? radius]) {
  return BorderRadius.all(
    radiusCircular(radius ?? 8.0),
  );
}

BorderRadius topRadius([double? radius]) {
  return BorderRadius.only(
    topLeft: radiusCircular(radius ?? 8.0),
    topRight: radiusCircular(radius ?? 8.0),
  );
}

BorderRadius bottomRadius([double? radius]) {
  return BorderRadius.only(
    bottomLeft: radiusCircular(radius ?? 8.0),
    bottomRight: radiusCircular(radius ?? 8.0),
  );
}

Radius radiusCircular([double? radius]) {
  return Radius.circular(radius ?? 8.0);
}