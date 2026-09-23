import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/location/domain/entities/address_entity.dart';
import 'package:client/features/location/domain/params/lat_long_param.dart';
import 'package:client/features/location/domain/repositories/map_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class AddressUsecase implements UseCase<AddressEntity, LatLongParam> {
  final MapRepository _repository;

  AddressUsecase(this._repository);

  @override
  Future<Either<Failure, AddressEntity>> call(LatLongParam param) {
    return _repository.fetchCurrentAddress(param);
  }
}
