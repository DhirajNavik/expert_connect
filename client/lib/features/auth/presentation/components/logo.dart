import 'package:client/core/extension/padding_extension.dart';
import 'package:client/core/extension/responsive_extension.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/core/utils/sizedBox.dart';
import 'package:client/flavors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final bool isTablet;
  const Logo({super.key, this.isTablet = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: isTablet ? .center : .end,
      spacing: Dimens.gapX2,
      children: [
        Image.asset(
          Flavor.icon,
          fit: BoxFit.cover,
          width: isTablet ? 80.width() : 100.width(),
        ).onlyPadding(left: Dimens.allPaddingX1),
        SizeBox.sizeHX4
      ],
    );
  }
}
