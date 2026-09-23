import "package:client/core/extension/context_extension.dart";
import "package:client/core/utils/app_images.dart";
import "package:client/features/settings/presentation/components/settings_responsive.dart";
import "package:client/features/settings/presentation/utils/settings_model.dart";
import "package:flutter/material.dart";

class ExpertSettingsView extends StatefulWidget {
  const ExpertSettingsView({super.key});

  @override
  State<ExpertSettingsView> createState() => _ExpertSettingsViewState();
}

class _ExpertSettingsViewState extends State<ExpertSettingsView> {
  List<SettingsModel> data = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _buildContent(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _buildContent(context);
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body: SettingsResponsive(items: data),
    );
  }

  void _buildContent(BuildContext context) {
    final localization = context.localizations;
    data = [
      SettingsModel(
        icon: AppImages.selectedHome,
        title: localization.help_and_support,
      ),
    ];
  }
}
