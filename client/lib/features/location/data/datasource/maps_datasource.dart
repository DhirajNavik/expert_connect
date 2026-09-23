import 'package:client/features/location/data/model/geocoding_model.dart';
import 'package:client/features/location/domain/params/lat_long_param.dart';

abstract interface class MapsDatasource {
  Future<GeocodingModel> fetchCurrentLocation(LatLongParam param);
}
