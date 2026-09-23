import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/schedule/domain/entities/schedule_entity.dart';
import 'package:client/features/schedule/domain/usecases/my_schedule_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scheduler_event.dart';
part 'scheduler_state.dart';
part 'scheduler_bloc.freezed.dart';

@injectable
class SchedulerBloc extends Bloc<SchedulerEvent, SchedulerState> {
  final MyScheduleUsecase _myScheduleUsecase;

  SchedulerBloc(this._myScheduleUsecase)
    : super(const SchedulerState.initial()) {
    on<_FetchSchedule>(_onFetchSchedule, transformer: droppable());
  }

  FutureOr<void> _onFetchSchedule(
    _FetchSchedule event,
    Emitter<SchedulerState> emit,
  ) async {
    final result = await _myScheduleUsecase(const NoParams());

    result.match(
      (failure) {
        emit(SchedulerState.error(failure.message));
      },
      (response) {
        emit(SchedulerState.loaded(mySchedule: response));
      },
    );
  }
}
