import 'package:client/features/stepper_profile/domain/entities/sub_categories_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_model.freezed.dart';
part 'sub_category_model.g.dart';

@freezed
abstract class SubCategoryModel with _$SubCategoryModel {
  const SubCategoryModel._();

  const factory SubCategoryModel({
    String? id,

    @JsonKey(name: 'name') String? name,

    @JsonKey(name: 'image') String? image,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);

  SubCategoryEntity toEntity() {
    return SubCategoryEntity(
      id: id,
      name: name,
      image: image,
    );
  }
}
