import 'package:flutter/material.dart';

import 'label_model.dart';

@immutable
class StepperStyle {
  
  final PageController controller;
  final List<Widget> children;
  final List<StepperLabelModel>? labels;
  final TextStyle? activeLabelHeadingStyle;
  final TextStyle? activeLabelBodyStyle;

  const StepperStyle({
    required this.children,
    required this.controller,
    this.labels,
    this.activeLabelHeadingStyle,
    this.activeLabelBodyStyle,
  });
}
