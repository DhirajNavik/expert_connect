// import 'dart:developer';

// import 'package:vendor/core/dio/exception_handlers.dart';
// import 'package:vendor/core/dio/network_requester.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:vendor/core/dio/repo_reponse.dart';
// import 'package:vendor/src/stepper_profile/model/geocoding_model.dart';

// abstract class MapRepository {
//   Future<RepoResponse<GeocodingModel>> placeFromCoordinates({
//     required double lat,
//     required double lng,
//   });
// }

// class MapRepositoryImpt implements MapRepository {
//   final NetworkRequester _network = NetworkRequester();
//   String key = dotenv.env['MAP_KEYS'] ?? "";


//   // Future<RepoResponse<GeoCodingSearchModal>> searchLocation({
//   //   required String placeName,
//   // }) async {
//   //   final url =
//   //       "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$key";

//   //   log(url);

//   //   final response = await _network.get(path: url);

//   //   return response is APIException
//   //       ? RepoResponse(error: response)
//   //       : RepoResponse(data: GeoCodingSearchModal.fromJson(response));
//   // }

//   // Future<RepoResponse<GeocodingSeachPlaceIdModal>> getLocationByPlaceID({
//   //   required String placeID,
//   // }) async {
//   //   final url =
//   //       "https://maps.googleapis.com/maps/api/place/details/json?placeid=$placeID&key=$key";

//   //   final response = await _network.get(path: url);

//   //   return response is APIException
//   //       ? RepoResponse(error: response)
//   //       : RepoResponse(data: GeocodingSeachPlaceIdModal.fromJson(response));
//   // }

//   // Future<RepoResponse<MyLocationModel>> getPinCode({
//   //   required double? lat,
//   //   required double? lng,
//   // }) async {
//   //   final url =
//   //       "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$key";
//   //   final response = await _network.get(path: url);

//   //   return response is APIException
//   //       ? RepoResponse(error: response)
//   //       : RepoResponse(data: MyLocationModel.fromJson(response));
//   // }
//   @override
//   Future<RepoResponse<GeocodingModel>> placeFromCoordinates({
//     required double lat,
//     required double lng,
//   }) async {

//     log("sssss");
//     final url =
//         "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$key";

//         log(url.toString());

//     final response = await _network.get(path: url);

//     return response is APIException
//         ? RepoResponse(error: response)
//         : RepoResponse(data: GeocodingModel.fromJson(response));
//   }
// }
