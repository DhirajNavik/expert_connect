import 'package:client/config/secure/secure_storage.dart';
import 'package:client/core/components/custom_button.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/responsive/responsive_layout.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/core/utils/sizedBox.dart';
import 'package:client/features/settings/presentation/components/setting_container.dart';
import 'package:client/features/settings/presentation/utils/settings_model.dart';
import 'package:flutter/material.dart';

class SettingsResponsive extends StatelessWidget {
  final List<SettingsModel> items;
  const SettingsResponsive({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final localization = context.localizations;
    return ResponsiveLayout(
      mobile: CustomScrollView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: .symmetric(
                horizontal: Dimens.horizontalspacing,
                vertical: Dimens.verticalspacing,
              ),
              decoration: BoxDecoration(
                borderRadius: .circular(Dimens.radiusX2),
                border: .all(width: 0.4, color: context.colorScheme.outline),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: .only(
                  left: Dimens.horPaddingX4,
                  top: Dimens.verPaddingX4,
                  bottom: Dimens.verPaddingX4,
                ),
                itemBuilder: (context, index) {
                  final data = items[index];
                  return SettingContainer(text: data.title, icon: data.icon);
                },
                separatorBuilder: (_, _) => Divider(),
                itemCount: items.length,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              padding: .symmetric(horizontal: Dimens.horizontalspacing),
              alignment: .topCenter,
              child: CustomButton(
                text: localization.logout,
                onPressed: () {
                  SessionController.instance.logout();
                },
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizeBox.widgetSpacing),
          SliverToBoxAdapter(child: SizedBox(height: Dimens.navBarHeight)),
        ],
      ),
      tablet: Container(),
    );
  }
}
