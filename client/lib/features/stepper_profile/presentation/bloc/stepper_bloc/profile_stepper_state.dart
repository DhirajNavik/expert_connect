part of 'profile_stepper_bloc.dart';

@freezed
abstract class ProfileStepperState with _$ProfileStepperState {
  const factory ProfileStepperState({
    @Default(0) int currentStep,

    String? categoryId,
    String? subCategoryId,
    String? experienceId,

    @Default('') String about,
    @Default(<String>[]) List<String> languages,

    @Default(false) bool isOtherCategory,
    String? othersCategoryName,
    @Default(false) bool isOtherSubCategory,
    String? othersSubCategoryName,
  }) = _ProfileStepperState;

  factory ProfileStepperState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStepperStateFromJson(json);
}
