import 'package:client/core/utils/app_palettes.dart';
import 'package:flutter/cupertino.dart';

import '../utils/dimens.dart';
import 'package:flutter/material.dart';

final class AppActionIconTheme {
  AppActionIconTheme._();

  static ActionIconThemeData from({required ColorScheme colorScheme}) {
    return ActionIconThemeData(
      backButtonIconBuilder: (context) => Material(
        elevation: 2,
        color: colorScheme.onPrimary.withOpacityExt(0.3),
        shape: const CircleBorder(),
        child: Center(
          child: Icon(CupertinoIcons.back, size: Dimens.scaleX3),
        ),
      ),

      closeButtonIconBuilder: (context) => Container(
        decoration: BoxDecoration(
          color: colorScheme.inversePrimary,
          shape: .circle,
        ),
        padding: .all(Dimens.allPaddingX2),
        child: Icon(
          Icons.close_rounded,
          color: colorScheme.onInverseSurface,
          size: Dimens.scaleX4,
        ),
      ),
      drawerButtonIconBuilder: (context) =>
          Icon(Icons.menu_rounded, color: colorScheme.onSurface),
      endDrawerButtonIconBuilder: (context) =>
          Icon(Icons.menu_open_rounded, color: colorScheme.onSurface),
    );
  }
}
