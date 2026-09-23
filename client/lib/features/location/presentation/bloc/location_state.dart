part of 'location_bloc.dart';

@freezed
sealed class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.error(String message) = _Error;
  const factory LocationState.fetchedAddress({AddressEntity? address}) =
      _FetchedAddress;
}


/*
@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState({
    AddressEntity? address,
    @Default(false) bool isLoading,
    String? error,
  }) = _LocationState;
}
*/