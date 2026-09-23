import 'package:client/core/error/failures.dart';
import 'package:client/features/stepper_profile/domain/entities/category_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/experience_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/sub_categories_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class StepperRepository {
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories();
  Future<Either<Failure, List<ExperienceEntity>>> fetchExperiences();
  Future<Either<Failure, List<SubCategoryEntity>>> fetchSubCategories({
    required String id,
  });
}
