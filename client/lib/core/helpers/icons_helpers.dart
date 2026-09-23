import 'package:client/core/utils/app_palettes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/dimens.dart';

class IconsHelpers {
  static Widget buildIcons({
    required String path,
    double? iconSize,
    Function()? onTap,
    Color? iconColor,
    Color? color,
    Color? borderColor,
    EdgeInsets? padding,
    double? radius,
  }) {
    return InkWell(
      overlayColor: const WidgetStatePropertyAll(AppPalettes.transparent),
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? Dimens.radius100),
          color: color,
          border: Border.all(
            width: 1,
            color: borderColor ?? AppPalettes.transparent,
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: path.endsWith('.svg')
              ? SvgPicture.asset(
                  path,
                  height: iconSize,
                  width: iconSize,
                  colorFilter: iconColor == null
                      ? null
                      : ColorFilter.mode(iconColor, BlendMode.srcIn),
                )
              : Image.asset(path, height: iconSize, color: iconColor),
        ),
      ),
    );
  }

  static Widget eyeIcon(String path, {VoidCallback? onTap, Color? color}) {
    return buildIcons(
      iconColor: color,
      path: path,
      onTap: onTap,
      iconSize: Dimens.scaleX3,
      padding: EdgeInsets.only(
        left: Dimens.allPaddingX4,
        right: Dimens.allPaddingX3,
      ),
    );
  }
}
