import 'package:client/features/location/data/model/geocoding_model.dart';
import 'package:client/features/location/domain/entities/address_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  const AddressModel._();

  const factory AddressModel({
    String? address,
    String? city,
    String? state,
    String? country,
    String? postalCode,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  factory AddressModel.fromGeocodingJson(GeocodingModel json) {
    final List<Results>? results = json.results;

    if (results == null || results.isEmpty) {
      return const AddressModel();
    }

    final result = results.first;

    String? city;
    String? state;
    String? country;
    String? postalCode;

    final components = result.addressComponents ?? [];

    for (final component in components) {
      final types = component.types ?? [];

      final value = component.longName ?? component.shortName;

      if (types.contains('locality')) {
        city = value;
      } else if (types.contains('administrative_area_level_1')) {
        state = value;
      } else if (types.contains('country')) {
        country = value;
      } else if (types.contains('postal_code')) {
        postalCode = value;
      }
    }

    return AddressModel(
      address: result.formattedAddress,
      city: city,
      state: state,
      country: country,
      postalCode: postalCode,
    );
  }

  AddressEntity toEntity() {
    return AddressEntity(
      address: address,
      city: city,
      state: state,
      country: country,
      postalCode: postalCode,
    );
  }
}
