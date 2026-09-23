part of 'scheduler_bloc.dart';

@freezed
class SchedulerState with _$SchedulerState {
  const factory SchedulerState.initial() = _Initial;
  const factory SchedulerState.loading() = _Loading;
  const factory SchedulerState.error(String message) = _Error;

  const factory SchedulerState.loaded({
    @Default(null) ScheduleEntity? mySchedule,
  }) = _Loaded;
}
