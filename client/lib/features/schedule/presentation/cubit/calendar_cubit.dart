import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calendar_state.dart';
part 'calendar_cubit.freezed.dart';

@injectable
class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarState.initial());

  void setInitialDate(DateTime date) {
    emit(state.copyWith(date: DateTime(date.year, date.month, 1)));
  }

  void switchPreviousMonth(DateTime date) {
    emit(state.copyWith(date: DateTime(date.year, date.month - 1, 1)));
  }

  void switchNextMonth(DateTime date) {
    emit(state.copyWith(date: DateTime(date.year, date.month + 1, 1)));
  }

  void toggleBlockedSelection() {
    emit(state.copyWith(isBlockedSelected: !state.isBlockedSelected));
  }

  void cancelBlockedSelection() {
    emit(state.copyWith(isBlockedSelected: false));
  }
}
