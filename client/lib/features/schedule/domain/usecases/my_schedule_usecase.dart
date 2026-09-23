import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/schedule/domain/entities/schedule_entity.dart';
import 'package:client/features/schedule/domain/repositories/schedule_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class MyScheduleUsecase implements UseCase<ScheduleEntity, NoParams> {
  final ScheduleRepository _repository;

  const MyScheduleUsecase(this._repository);
  @override
  Future<Either<Failure, ScheduleEntity>> call(NoParams params) {
    return _repository.loadMySchedule();
  }
}
