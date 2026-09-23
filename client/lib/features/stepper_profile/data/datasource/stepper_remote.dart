import 'package:client/core/dio/network_requester.dart';
import 'package:client/core/extension/map_parser_extension.dart';
import 'package:client/core/utils/app_url.dart';
import 'package:client/features/stepper_profile/data/datasource/stepper_datasource.dart';
import 'package:client/features/stepper_profile/data/model/category_model.dart';
import 'package:client/features/stepper_profile/data/model/experience_model.dart';
import 'package:client/features/stepper_profile/data/model/sub_category_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: StepperDatasource)
class StepperRemote implements StepperDatasource {
  final NetworkRequester _network;
  const StepperRemote(this._network);

  @override
  Future<List<CategoryModel>> fetchCategories() async {
    final response = await _network.get(AppUrl.categories);
    return (response as Map<String, dynamic>).parseData(CategoryModel.fromJson);
  }

  @override
  Future<List<SubCategoryModel>> fetchSubCategories(String id) async {
    final response = await _network.get(AppUrl.subCategories(id));
    return (response as Map<String, dynamic>).parseData(
      SubCategoryModel.fromJson,
    );
  }

  @override
  Future<List<ExperienceModel>> fetchExpereinces() async {
    final response = await _network.get(AppUrl.experiences);
    return (response as Map<String, dynamic>).parseData(
      ExperienceModel.fromJson,
    );
  }
}
