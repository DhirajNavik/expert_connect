import 'package:client/config/injector/injectable.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/features/location/presentation/bloc/location_bloc.dart';
import 'package:client/features/stepper_profile/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:client/features/stepper_profile/presentation/bloc/stepper_bloc/profile_stepper_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../components/label_model.dart';
import '../components/step_indicator_page_widget.dart';
import '../components/stepper_style.dart';
import 'location_info_view.dart';
import 'personal_info_view.dart';
import 'preview_view.dart';

class ProfileStepperView extends StatefulWidget {
  const ProfileStepperView({super.key});

  @override
  State<ProfileStepperView> createState() => _ProfileStepperViewState();
}

class _ProfileStepperViewState extends State<ProfileStepperView> {
  final PageController _pageController = PageController(initialPage: 0);
  final personalInfoKey = GlobalKey<FormBuilderState>();
  final locationInfoKey = GlobalKey<FormBuilderState>();

  final ProfileStepperBloc _profileStepperBloc = serviceLocator();
  final LocationBloc _locationBloc = serviceLocator();
  final ProfileBloc _profileBloc = serviceLocator();

  final List<StepperLabelModel> _labels = [
    StepperLabelModel(
      heading: "Personal Info",
      body: "Complete your profile information",
    ),
    StepperLabelModel(heading: "Location Info", body: "Update your location"),
    StepperLabelModel(
      heading: "Preview",
      body: "Review your information before processing",
    ),
  ];
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _profileBloc.add(ProfileEvent.getInitialData());
    _pages = [
      PersonalInfoView(
        bloc: _profileBloc,
        stepperBloc: _profileStepperBloc,
        formKey: personalInfoKey,
        controller: _pageController,
      ),
      LocationInfoView(
        controller: _pageController,
        bloc: _locationBloc,
        formKey: locationInfoKey,
      ),
      PreviewView(
        controller: _pageController,
        personalFormKey: personalInfoKey,
        locationFormKey: locationInfoKey,
        stepperBloc: _profileStepperBloc,
        locationBloc: _locationBloc,
      ),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      appBar: AppBar(title: Text("Complete Your Profile")),
      body: Column(
        children: [
          Expanded(
            child: StepIndicatorPageWidget(
              style: StepperStyle(
                children: _pages,
                controller: _pageController,
                labels: _labels,
                activeLabelHeadingStyle: textTheme.titleMedium?.copyWith(
                  color: AppPalettes.white,
                  fontWeight: FontWeight.bold,
                ),
                activeLabelBodyStyle: textTheme.bodyMedium?.copyWith(
                  color: AppPalettes.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
