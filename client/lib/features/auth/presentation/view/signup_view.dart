import 'package:client/core/extension/responsive_extension.dart';
import 'package:client/core/responsive/responsive_layout.dart';
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/features/auth/presentation/components/app_bar.dart';
import 'package:client/features/auth/presentation/components/logo.dart';
import 'package:client/features/auth/presentation/components/signup_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
            child: SignupBodyWidget(),
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
            Expanded(child: Center(child: SignupBodyWidget())),
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
            Expanded(flex: 10, child: Center(child: SignupBodyWidget())),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
