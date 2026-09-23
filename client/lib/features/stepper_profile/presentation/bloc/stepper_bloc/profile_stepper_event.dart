part of 'profile_stepper_bloc.dart';

@freezed
abstract class ProfileStepperEvent with _$ProfileStepperEvent {

  const factory ProfileStepperEvent.setStep(int step) = _SetStep;

  const factory ProfileStepperEvent.nextStep() = _NextStep;

  const factory ProfileStepperEvent.previousStep() = _PreviousStep;

  const factory ProfileStepperEvent.savePersonalInfo({
    required CategoryEntity category,
    required SubCategoryEntity subCategory,
    required ExperienceEntity experience,
    required String about,
    required List<String> languages,
    String? othersCategoryName,
    String? othersSubCategoryName,
    bool? isOtherCategory,
    bool? isOtherSubCategory,
  }) = _SavePersonalInfo;

  const factory ProfileStepperEvent.selectCategory({
    required CategoryEntity? category,
  }) = _SelectCategory;

  const factory ProfileStepperEvent.selectSubCategory({
    required SubCategoryEntity? subCategory,
  }) = _SelectSubCategory;

  const factory ProfileStepperEvent.selectExperience({
    required ExperienceEntity? experience,
  }) = _SelectExperience;

  const factory ProfileStepperEvent.updateAbout({required String about}) =
      _UpdateAbout;

  const factory ProfileStepperEvent.updateLanguages({
    required String language,
  }) = _UpdateLanguages;

  const factory ProfileStepperEvent.reset() = _Reset;
}
