part of 'calendar_cubit.dart';

@freezed
abstract class CalendarState with _$CalendarState {
  const factory CalendarState({
    required DateTime date,
    @Default(false) bool isBlockedSelected,
  }) = _CalendarState;

  factory CalendarState.initial() => CalendarState(date: DateTime.now());
}
