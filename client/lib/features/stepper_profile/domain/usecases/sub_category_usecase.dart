import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/stepper_profile/domain/entities/sub_categories_entity.dart';
import 'package:client/features/stepper_profile/domain/repositories/stepper_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class SubCategoryUsecase
    implements UseCase<List<SubCategoryEntity>, String> {
  final StepperRepository _repository;

  const SubCategoryUsecase(this._repository);

  @override
  Future<Either<Failure, List<SubCategoryEntity>>> call(String param) {
    return _repository.fetchSubCategories(id: param);
  }
}
