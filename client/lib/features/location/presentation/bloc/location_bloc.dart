import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:client/features/location/domain/entities/address_entity.dart';
import 'package:client/features/location/domain/params/lat_long_param.dart';
import 'package:client/features/location/domain/usecases/address_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:geolocator/geolocator.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final AddressUsecase addressUsecase;

  LocationBloc(this.addressUsecase) : super(const LocationState.initial()) {
    on<_GetAddress>(_onGetAddress, transformer: droppable());
    on<_Clear>(_onClear);
  }

  Future<void> _onGetAddress(
    _GetAddress event,
    Emitter<LocationState> emit,
  ) async {
    emit(const LocationState.loading());
    try {
      final position = await _requestCurrentLocation();
      if (position != null) {
        final result = await addressUsecase(
          LatLongParam(
            latitude: position.latitude,
            longitude: position.longitude,
          ),
        );

        await result.match(
          (failure) {
            emit(LocationState.error(failure.message));
          },
          (response) async {
            emit(LocationState.fetchedAddress(address: response));
          },
        );
      }
    } catch (e) {
      emit(LocationState.error(e.toString()));
    }
  }

  void _onClear(_Clear event, Emitter<LocationState> emit) {
  }

  Future<Position?> _requestCurrentLocation() async {
    // Your location logic here
    try {
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        throw 'Location permission is denied permanently. Please enable it in settings.';
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        final position = await Geolocator.getCurrentPosition();
        return position;
      }

      return null;
    } catch (e) {
      throw 'Error getting location: ${e.toString()}';
    }
  }
}
