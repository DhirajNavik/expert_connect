part of 'location_bloc.dart';


@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getAddress() = _GetAddress;
  const factory LocationEvent.clear() = _Clear;
}