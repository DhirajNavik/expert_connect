import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/stepper_profile/domain/entities/experience_entity.dart';
import 'package:client/features/stepper_profile/domain/repositories/stepper_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class ExperienceUsecase implements UseCase<List<ExperienceEntity>, NoParams> {
  final StepperRepository _repository;

  const ExperienceUsecase(this._repository);
  @override
  Future<Either<Failure, List<ExperienceEntity>>> call(NoParams params) {
    return _repository.fetchExperiences();
  }
}
