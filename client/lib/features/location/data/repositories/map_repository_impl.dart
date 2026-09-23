import 'package:client/core/error/exception.dart';
import 'package:client/core/error/failures.dart';
import 'package:client/features/location/data/datasource/maps_datasource.dart';
import 'package:client/features/location/data/model/address_model.dart';
import 'package:client/features/location/domain/entities/address_entity.dart';
import 'package:client/features/location/domain/params/lat_long_param.dart';
import 'package:client/features/location/domain/repositories/map_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MapRepository)
class MapRepositoryImpl implements MapRepository {
  final MapsDatasource _dataSource;

  const MapRepositoryImpl(this._dataSource);
  @override
  Future<Either<Failure, AddressEntity>> fetchCurrentAddress(
    LatLongParam param,
  ) async {
    try {
      final result = await _dataSource.fetchCurrentLocation(param);
      return Right(AddressModel.fromGeocodingJson(result).toEntity());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (err) {
      return const Left(ServerFailure('Unexpected error occurred.'));
    }
  }
}
