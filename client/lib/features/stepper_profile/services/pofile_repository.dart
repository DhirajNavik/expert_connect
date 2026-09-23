// import 'package:dio/dio.dart';
// import 'package:vendor/core/dio/exception_handlers.dart';
// import 'package:vendor/core/dio/network_requester.dart';
// import 'package:vendor/core/dio/repo_reponse.dart';
// import 'package:vendor/core/secure/secure_storage.dart';
// import 'package:vendor/src/app/app_url.dart';
// import 'package:vendor/src/auth/repo/auth_state_manager.dart';
// import 'package:vendor/src/stepper_profile/model/categories_model.dart';
// import 'package:vendor/src/stepper_profile/model/sub_categories_model.dart';
// import 'package:vendor/src/stepper_profile/model/success_model.dart';
// import 'package:vendor/src/stepper_profile/model/years_experience_model.dart';

// abstract class PofileRepository {
//   Future<RepoResponse<CategoriesModel>> getCategories();
//   Future<RepoResponse<SubCategoriesModel>> getSubCategories({
//     required int categoryID,
//   });
//   Future<RepoResponse<YearExperienceModel>> getExperiences();
//   Future<RepoResponse<SuccessModel>> postMyProfile({
//     required FormData formData,
//   });
// }

// class PofileRepositoryImpl implements PofileRepository {
//   final NetworkRequester _network = NetworkRequester();
//   final SessionController _session = SessionController.instance;

//   @override
//   Future<RepoResponse<CategoriesModel>> getCategories() async {
//     final response = await _network.get(path: AppUrl.category);

//     return response is APIException
//         ? RepoResponse(error: response)
//         : RepoResponse(data: CategoriesModel.fromJson(response));
//   }

//   @override
//   Future<RepoResponse<SubCategoriesModel>> getSubCategories({
//     required int categoryID,
//   }) async {
//     final response = await _network.get(
//       path: "${AppUrl.subCategory}/$categoryID",
//     );

//     return response is APIException
//         ? RepoResponse(error: response)
//         : RepoResponse(data: SubCategoriesModel.fromJson(response));
//   }

//   @override
//   Future<RepoResponse<YearExperienceModel>> getExperiences() async {
//     final response = await _network.get(path: AppUrl.yearsOfExpList);

//     return response is APIException
//         ? RepoResponse(error: response)
//         : RepoResponse(data: YearExperienceModel.fromJson(response));
//   }

//   @override
//   Future<RepoResponse<SuccessModel>> postMyProfile({
//     required FormData formData,
//   }) async {
//     final response = await _network.post(
//       path: AppUrl.updateVendorProfile(await _session.getID()),
//       data: formData,
//       token: await _session.getToken(),
//     );

//     return response is APIException
//         ? RepoResponse(error: response)
//         : RepoResponse(data: SuccessModel.fromJson(response));
//   }
// }
