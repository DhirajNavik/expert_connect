import 'package:client/core/extension/responsive_extension.dart';
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:flutter/material.dart';
import 'logo.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppPalettes.transparent,
      pinned: true,
      expandedHeight: 180.height(),
      collapsedHeight: 130.height(),
      floating: true,
      snap: true,
      stretch: true,
      scrolledUnderElevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          borderRadius: .only(
            bottomLeft: .circular(Dimens.radiusX4),
            bottomRight: .circular(Dimens.radiusX4),
          ),
          gradient: LinearGradient(
            colors: [
              AppPalettes.primary,
              AppPalettes.primaryDark,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FlexibleSpaceBar(
          expandedTitleScale: 1.5,
          collapseMode: CollapseMode.parallax,
          centerTitle: true,
          title: Logo(),
        ),
      ),
    );
  }
}
