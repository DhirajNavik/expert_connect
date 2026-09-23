import 'package:client/features/stepper_profile/domain/entities/experience_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_model.freezed.dart';
part 'experience_model.g.dart';

@freezed
abstract class ExperienceModel with _$ExperienceModel {
  const ExperienceModel._();

  const factory ExperienceModel({
    String? id,
    @JsonKey(name: "experience") String? experience,
  }) = _ExperienceModel;

  factory ExperienceModel.fromJson(Map<String, dynamic> json) =>
      _$ExperienceModelFromJson(json);

  ExperienceEntity toEntity() {
    return ExperienceEntity(id: id, experience: experience);
  }
}
