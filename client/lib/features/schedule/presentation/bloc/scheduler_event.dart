part of 'scheduler_bloc.dart';

@freezed
class SchedulerEvent with _$SchedulerEvent {
  const factory SchedulerEvent.fetchSchedule() = _FetchSchedule;
}