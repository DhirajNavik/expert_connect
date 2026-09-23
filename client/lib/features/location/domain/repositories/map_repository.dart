import 'package:client/core/error/failures.dart';
import 'package:client/features/location/domain/entities/address_entity.dart';
import 'package:client/features/location/domain/params/lat_long_param.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class MapRepository {
  Future<Either<Failure, AddressEntity>> fetchCurrentAddress(LatLongParam param);
}
