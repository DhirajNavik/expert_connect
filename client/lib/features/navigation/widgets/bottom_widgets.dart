import 'package:client/core/utils/app_images.dart';
import 'package:client/features/auth/presentation/view/login_view.dart';
import 'package:client/features/home/presentation/pages/expert_home_view.dart';
import 'package:client/features/navigation/model/navigation_model.dart';
import 'package:client/features/settings/presentation/view/expert_settings_view.dart';
import 'package:flutter/material.dart';

class BottomWidgets {
  static List<NavigationModel> expertNavData = [
    NavigationModel(
      unselectedPath: AppImages.unSelectedHome,
      selectedPath: AppImages.selectedHome,
      text: "Home",
    ),
    NavigationModel(
      unselectedPath: AppImages.unSelectedAppointment,
      selectedPath: AppImages.selectedAppointment,

      text: "Appointment",
    ),
    NavigationModel(
      unselectedPath: AppImages.unSelectedChat,
      selectedPath: AppImages.selectedChats,

      text: "History",
    ),
    NavigationModel(
      unselectedPath: AppImages.unSelectedWallets,
      selectedPath: AppImages.selectedWallets,

      text: "Earning",
    ),
    NavigationModel(
      unselectedPath: AppImages.unSelectedProfile,
      selectedPath: AppImages.selectedProfile,

      text: "Profile",
    ),
  ];

  static Widget expertBody(int index, List<Widget?> pages) {
    pages[index] ??= _buildExpertPage(index);
    return _child(index, pages);
  }

  static Widget _child(int index, List<Widget?> pages) => IndexedStack(
    index: index,
    children: List.generate(pages.length, (i) {
      final page = pages[i];

      if (page == null) {
        return const SizedBox();
      }

      return AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        opacity: i == index ? 1 : 0,
        child: page,
      );
    }),
  );

  static Widget _buildExpertPage(int index) {
    switch (index) {
      case 0:
        return ExpertHomeView();

      case 1:
        return const SizedBox();

      case 2:
        return const SizedBox();

      case 3:
        return const SizedBox();

      case 4:
        return const ExpertSettingsView();

      default:
        return const LoginView();
    }
  }
}
