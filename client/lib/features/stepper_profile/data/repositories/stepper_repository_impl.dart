import 'package:client/core/error/exception.dart';
import 'package:client/core/error/failures.dart';
import 'package:client/features/stepper_profile/data/datasource/stepper_datasource.dart';
import 'package:client/features/stepper_profile/domain/entities/category_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/experience_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/sub_categories_entity.dart';
import 'package:client/features/stepper_profile/domain/repositories/stepper_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: StepperRepository)
class StepperRepositoryImpl implements StepperRepository {
  final StepperDatasource _dataSource;

  StepperRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories() async {
    try {
      final result = await _dataSource.fetchCategories();
      return Right(result.map((e) => e.toEntity()).toList());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (err) {
      return const Left(ServerFailure('Unexpected error occurred.'));
    }
  }

  @override
  Future<Either<Failure, List<SubCategoryEntity>>> fetchSubCategories({
    required String id,
  }) async {
    try {
      final result = await _dataSource.fetchSubCategories(id);
      return Right(result.map((e) => e.toEntity()).toList());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return const Left(ServerFailure('Unexpected error occurred.'));
    }
  }

  @override
  Future<Either<Failure, List<ExperienceEntity>>> fetchExperiences() async {
    try {
      final result = await _dataSource.fetchExpereinces();
      return Right(result.map((e) => e.toEntity()).toList());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return const Left(ServerFailure('Unexpected error occurred.'));
    }
  }
}
