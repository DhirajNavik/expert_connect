import 'package:client/core/dio/network_requester.dart';
import 'package:client/core/utils/app_url.dart';
import 'package:client/features/location/data/datasource/maps_datasource.dart';
import 'package:client/features/location/data/model/geocoding_model.dart';
import 'package:client/features/location/domain/params/lat_long_param.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MapsDatasource)
class MapsRemote implements MapsDatasource {
  final NetworkRequester _network;

  const MapsRemote(this._network);
  @override
  Future<GeocodingModel> fetchCurrentLocation(LatLongParam param) async {
    final response = await _network.post(
      AppUrl.fetchCurrentLocation(
        param.latitude,
        param.longitude,
        key: dotenv.env['MAP_KEYS']!,
      ),
    );
    return GeocodingModel.fromJson(response);
  }
}
