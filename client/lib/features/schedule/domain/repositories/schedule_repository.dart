import 'package:client/core/error/failures.dart';
import 'package:client/features/schedule/domain/entities/schedule_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ScheduleRepository {
  Future<Either<Failure, ScheduleEntity>> loadMySchedule();
 
}
