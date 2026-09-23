import 'package:client/core/extension/responsive_extension.dart';
import 'package:client/core/responsive/responsive_layout.dart';
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/features/auth/presentation/components/app_bar.dart';
import 'package:client/features/auth/presentation/components/login_body.dart';
import 'package:client/features/auth/presentation/components/logo.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobile: NestedScrollView(
          headerSliverBuilder: (nested, _) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(nested),
                sliver: SliverSafeArea(
                  top: false,
                  bottom: false,
                  sliver: AppBarWidget(),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: LoginBodyWidget(),
          ),
        ),
        tablet: Row(
          children: [
            Container(
              width: 0.4.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimens.radiusX4),
                  bottomRight: Radius.circular(Dimens.radiusX4),
                ),
                gradient: LinearGradient(
                  colors: [AppPalettes.primary, AppPalettes.primaryDark],
                ),
              ),
              child: Logo(isTablet: true),
            ),
            Expanded(child: Center(child: LoginBodyWidget())),
          ],
        ),

        desktop: Row(
          children: [
            Container(
              width: 0.3.screenWidth,
              decoration: BoxDecoration(
                borderRadius: .only(
                  topRight: .circular(Dimens.radiusX4),
                  bottomRight: .circular(Dimens.radiusX4),
                ),
                gradient: LinearGradient(
                  colors: [AppPalettes.primary, AppPalettes.primaryDark],
                ),
              ),
              child: Logo(isTablet: true),
            ),
            Spacer(flex: 3),
            Expanded(flex: 10, child: Center(child: LoginBodyWidget())),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
