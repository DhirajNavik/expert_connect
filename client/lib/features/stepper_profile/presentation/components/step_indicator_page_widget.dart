import 'package:client/core/utils/app_palettes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'linear_step_indicator.dart';
import 'stepper_style.dart';

class StepIndicatorPageWidget extends StatelessWidget {
  final StepperStyle style;
  const StepIndicatorPageWidget({super.key, required this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .max,
      children: [
        LinearStepIndicator(
          backgroundColor: AppPalettes.primary,
          steps: style.children.length,
          controller: style.controller,
          activeNodeColor: AppPalettes.white,
          inActiveNodeColor: AppPalettes.grey,
          activeLineColor: AppPalettes.white,
          inActiveLineColor: AppPalettes.grey,
          lineHeight: 1.5,
          iconSize: 14.spMin,
          activeBorderColor: AppPalettes.white,
          inActiveBorderColor: AppPalettes.grey,
          labels: style.labels ?? [],
          activeLabelHeadingStyle: style.activeLabelHeadingStyle,
          ativeLabelBodyStyle: style.activeLabelBodyStyle,
        ),
        Expanded(
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: style.controller,
            itemCount: style.children.length,
            itemBuilder: (_, index) {
              return style.children[index];
            },
          ),
        ),
      ],
    );
  }
}
