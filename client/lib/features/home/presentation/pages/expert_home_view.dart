import 'package:client/config/injector/injectable.dart';
import 'package:client/features/navigation/cubit/navigation_cubit.dart';
import 'package:client/features/navigation/widgets/navigation_view.dart';
import 'package:client/features/navigation/widgets/bottom_widgets.dart';
import 'package:client/features/schedule/presentation/components/calander_widget.dart';
import 'package:client/features/schedule/presentation/pages/schedule_view.dart';
import 'package:client/features/stepper_profile/presentation/components/verify_profile_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpertHomeView extends StatefulWidget {
  const ExpertHomeView({super.key});

  @override
  State<ExpertHomeView> createState() => _ExpertHomeViewState();
}

class _ExpertHomeViewState extends State<ExpertHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("homepage")),
      body: Column(children: [ScheduleView()]),
    );
  }
}
