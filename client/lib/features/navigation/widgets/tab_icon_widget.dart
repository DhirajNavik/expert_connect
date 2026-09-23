import 'package:client/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/dimens.dart';
import '../model/navigation_model.dart';

class TabIconWidget extends StatelessWidget {
  final NavigationModel data;
  final VoidCallback onTap;
  final bool isSelected;

  const TabIconWidget({
    super.key,
    required this.data,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final color = context.colorScheme;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: TweenAnimationBuilder<Color?>(
        duration: const Duration(milliseconds: 250),
        tween: ColorTween(
          end: isSelected ? color.onPrimary : color.onSurfaceVariant,
        ),
        builder: (context, iconColor, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: Dimens.gapX2,
            children: [
              SvgPicture.asset(
                isSelected ? data.selectedPath! : data.unselectedPath!,
                height: isSelected ? Dimens.scaleX4 : Dimens.scaleX3,
                colorFilter: ColorFilter.mode(
                  iconColor ?? Colors.white,
                  BlendMode.srcIn,
                ),
              ),

              // if (data.text != null)
              //   Text(
              //     data.text!,
              //     maxLines: 1,
              //     overflow: TextOverflow.ellipsis,
              //     style: isSelected
              //         ? textTheme.bodySmall?.copyWith(
              //             fontWeight: FontWeight.bold,
              //             color: color.surface,
              //           )
              //         : textTheme.labelSmall?.copyWith(
              //             color: color.onSurfaceVariant,
              //           ),
              //   ),
            ],
          );
        },
      ),
    );
  }
}
