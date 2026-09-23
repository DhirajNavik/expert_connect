import 'package:flutter/material.dart';
import '../../../core/utils/dimens.dart';
import '../model/navigation_model.dart';
import 'tab_icon_widget.dart';

class NavigationView extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int selectedIndex;
  final List<NavigationModel> navigation;
  const NavigationView({
    super.key,
    required this.onTap,
    required this.selectedIndex,
    required this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: Dimens.horizontalspacing),
      child: ClipRRect(
        borderRadius: .circular(Dimens.radius100),
        child: NavigationBar(
          onDestinationSelected: onTap,
          selectedIndex: selectedIndex,
          height: Dimens.navBarHeight,
          destinations: List.generate(navigation.length, (index) {
            final item = navigation[index];
            return TabIconWidget(
              key: ValueKey(index),
              data: item,
              onTap: () => onTap(index),
              isSelected: index == selectedIndex,
            );
          }),
        ),
      ),
    );
  }
}
