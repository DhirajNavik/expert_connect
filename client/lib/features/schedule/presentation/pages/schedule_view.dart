import 'package:client/config/injector/injectable.dart';
import 'package:client/features/schedule/presentation/bloc/scheduler_bloc.dart';
import 'package:client/features/schedule/presentation/components/calander_widget.dart';
import 'package:client/features/schedule/presentation/cubit/calendar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  late final CalendarCubit calenderCubit;
  late final SchedulerBloc scheduleBloc;

  @override
  void initState() {
    super.initState();
    calenderCubit = serviceLocator();
    scheduleBloc = serviceLocator();

    scheduleBloc.add(SchedulerEvent.fetchSchedule());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SchedulerBloc, SchedulerState>(
      bloc: scheduleBloc,
      listener: (context, state) {},

      builder: (context, state) {
        return state.when(
          initial: () => const Text("Initial"),
          loading: () => const CircularProgressIndicator(),
          error: (message) => Text(message),
          loaded: (schedule) {
            return CalanderWidget(
              bloc: calenderCubit,
              selectedStartDate: schedule?.startDate.toLocal(),
              selectedEndDate: schedule?.endDate.toLocal(),
              blockedDates: schedule?.dayOff.map((e)=>e.date).toList(),
            );
          },
        );
      },
    );
  }
}
