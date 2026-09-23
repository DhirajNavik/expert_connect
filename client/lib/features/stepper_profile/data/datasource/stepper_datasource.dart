

import 'package:client/features/stepper_profile/data/model/category_model.dart';
import 'package:client/features/stepper_profile/data/model/experience_model.dart';
import 'package:client/features/stepper_profile/data/model/sub_category_model.dart';

abstract interface class StepperDatasource {
  Future<List<CategoryModel>> fetchCategories();
  Future<List<SubCategoryModel>> fetchSubCategories(String id);
  Future<List<ExperienceModel>> fetchExpereinces();

}