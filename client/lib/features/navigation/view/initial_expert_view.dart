import 'package:client/config/injector/injectable.dart';
import 'package:client/features/navigation/cubit/navigation_cubit.dart';
import 'package:client/features/navigation/widgets/navigation_view.dart';
import 'package:client/features/navigation/widgets/bottom_widgets.dart';
import 'package:client/features/stepper_profile/presentation/components/verify_profile_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialExpertView extends StatefulWidget {
  const InitialExpertView({super.key});

  @override
  State<InitialExpertView> createState() => _InitialExpertViewState();
}

class _InitialExpertViewState extends State<InitialExpertView> {
  final List<Widget?> _pages = List.filled(5, null);
  late final NavigationCubit navigation;

  @override
  void initState() {
    navigation = serviceLocator<NavigationCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      VerifyProfilePopUp.showPopup();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NavigationCubit, NavigationState, int>(
      bloc: navigation,
      selector: (state) {
        return state.selectedIndex;
      },
      builder: (_, index) {
        return Scaffold(
          extendBody: true,
          body: BottomWidgets.expertBody(index, _pages),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: NavigationView(
            navigation: BottomWidgets.expertNavData,
            selectedIndex: index,
            onTap: navigation.selectTab,
          ),
        );
      },
    );
  }
}
