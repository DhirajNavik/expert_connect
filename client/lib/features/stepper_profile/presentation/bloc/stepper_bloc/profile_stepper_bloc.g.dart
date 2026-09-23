// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_stepper_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileStepperState _$ProfileStepperStateFromJson(Map<String, dynamic> json) =>
    _ProfileStepperState(
      currentStep: (json['currentStep'] as num?)?.toInt() ?? 0,
      categoryId: json['categoryId'] as String?,
      subCategoryId: json['subCategoryId'] as String?,
      experienceId: json['experienceId'] as String?,
      about: json['about'] as String? ?? '',
      languages:
          (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      isOtherCategory: json['isOtherCategory'] as bool? ?? false,
      othersCategoryName: json['othersCategoryName'] as String?,
      isOtherSubCategory: json['isOtherSubCategory'] as bool? ?? false,
      othersSubCategoryName: json['othersSubCategoryName'] as String?,
    );

Map<String, dynamic> _$ProfileStepperStateToJson(
  _ProfileStepperState instance,
) => <String, dynamic>{
  'currentStep': instance.currentStep,
  'categoryId': instance.categoryId,
  'subCategoryId': instance.subCategoryId,
  'experienceId': instance.experienceId,
  'about': instance.about,
  'languages': instance.languages,
  'isOtherCategory': instance.isOtherCategory,
  'othersCategoryName': instance.othersCategoryName,
  'isOtherSubCategory': instance.isOtherSubCategory,
  'othersSubCategoryName': instance.othersSubCategoryName,
};
