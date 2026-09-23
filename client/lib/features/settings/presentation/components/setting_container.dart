import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/helpers/icons_helpers.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback? onTap;

  const SettingContainer({
    required this.text,
    required this.icon,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return InkWell(
      borderRadius: BorderRadius.circular(Dimens.radiusX4),
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: .center,
          spacing: Dimens.gapX3,
          children: [
            IconsHelpers.buildIcons(
              path: icon,
              color: context.colorScheme.primary,
              padding: .all(Dimens.allPaddingX2B),
              iconColor: context.iconsColor,
              iconSize: Dimens.scaleX3,
            ),
            Expanded(
              child: Text(
                text,
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
