import 'package:client/config/routes/route_exports.dart';
import 'package:client/core/error/exception.dart';
import 'package:client/core/error/failures.dart';
import 'package:client/features/schedule/data/datasources/schedule_datasource.dart';
import 'package:client/features/schedule/domain/entities/schedule_entity.dart';
import 'package:client/features/schedule/domain/repositories/schedule_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ScheduleRepository)
class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleDatasource _dataSource;

  ScheduleRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, ScheduleEntity>> loadMySchedule() async {
    try {
      final result = await _dataSource.loadMySchedule();
      return Right(result.toEntity());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (err, trackStrace) {
      debugPrintStack(stackTrace: trackStrace);
      return Left(ServerFailure('Unexpected error occurred$err.'));
    }
  }
}
