import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/stepper_profile/domain/entities/category_entity.dart';
import 'package:client/features/stepper_profile/domain/repositories/stepper_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class CategoryUsecase implements UseCase<List<CategoryEntity>, NoParams> {
  final StepperRepository _repository;

  const CategoryUsecase(this._repository);
  @override
  Future<Either<Failure, List<CategoryEntity>>> call(NoParams params) {
    return _repository.fetchCategories();
  }
}
