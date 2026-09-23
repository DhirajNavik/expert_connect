import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/helpers/icons_helpers.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_images.dart';
import '../../../utils/dimens.dart';
import '../utils/date_time_utils.dart';
class CalendarHeader extends StatelessWidget {
  const CalendarHeader({
    super.key,
    required this.date,
    required this.onPreviousMonth,
    required this.onNextMonth,
  });

  final DateTime date;
  final Function(DateTime) onPreviousMonth;
  final Function(DateTime) onNextMonth;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final iconColor = context.iconsColor;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconsHelpers.buildIcons(
          padding: EdgeInsets.all(Dimens.allPaddingX2),
          path: AppImages.leftArrowIcon,
          iconSize: Dimens.scaleX2,
          iconColor: iconColor,
          onTap: () => onPreviousMonth(date),
        ),
        Expanded(
          child: Center(
            child: Text(
              date.monthAndYear,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        IconsHelpers.buildIcons(
          padding: EdgeInsets.all(Dimens.allPaddingX2),
          path: AppImages.rightArrowIcon,
          iconSize: Dimens.scaleX2,
          iconColor: iconColor,
          onTap: () => onNextMonth(date),
        ),
      ],
    );
  }
}
