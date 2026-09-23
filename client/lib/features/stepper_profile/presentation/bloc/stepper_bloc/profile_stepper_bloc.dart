import 'package:client/features/stepper_profile/domain/entities/category_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/experience_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/sub_categories_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'profile_stepper_event.dart';
part 'profile_stepper_state.dart';
part 'profile_stepper_bloc.freezed.dart';
part 'profile_stepper_bloc.g.dart';

@injectable
class ProfileStepperBloc
    extends HydratedBloc<ProfileStepperEvent, ProfileStepperState> {
  ProfileStepperBloc() : super(const ProfileStepperState()) {
    on<_SetStep>(_onSetStep);
    on<_NextStep>(_onNextStep);
    on<_PreviousStep>(_onPreviousStep);

    on<_SavePersonalInfo>(_onSavePersonalInfo);

    on<_SelectCategory>(_onSelectCategory);
    on<_SelectSubCategory>(_onSelectSubCategory);
    on<_SelectExperience>(_onSelectExperience);

    on<_UpdateAbout>(_onUpdateAbout);
    on<_UpdateLanguages>(_onUpdateLanguages);

    on<_Reset>(_onReset);
  }

  void _onSetStep(_SetStep event, Emitter<ProfileStepperState> emit) {
    emit(state.copyWith(currentStep: event.step));
  }

  void _onNextStep(_NextStep event, Emitter<ProfileStepperState> emit) {
    if (state.currentStep >= 1) return;
    emit(state.copyWith(currentStep: state.currentStep + 1));
  }

  void _onPreviousStep(_PreviousStep event, Emitter<ProfileStepperState> emit) {
    if (state.currentStep <= 0) return;
    emit(state.copyWith(currentStep: state.currentStep - 1));
  }

  void _onSavePersonalInfo(
    _SavePersonalInfo event,
    Emitter<ProfileStepperState> emit,
  ) {
    emit(
      state.copyWith(
        categoryId: event.category.id,
        subCategoryId: event.subCategory.id,
        experienceId: event.experience.id,
        about: event.about,
        languages: event.languages,
        othersCategoryName: event.othersCategoryName,
        othersSubCategoryName: event.othersSubCategoryName,
      ),
    );
  }

  void _onSelectCategory(
    _SelectCategory event,
    Emitter<ProfileStepperState> emit,
  ) {
    if (event.category?.name == "others") {
      return emit(
        state.copyWith(
          categoryId: event.category?.id,
          isOtherCategory: true,
          isOtherSubCategory: false,
          othersCategoryName: null,
        ),
      );
    }
    return emit(
      state.copyWith(
        categoryId: event.category?.id,
        isOtherCategory: false,
        isOtherSubCategory: false,
        othersCategoryName: null,
      ),
    );
  }

  void _onSelectSubCategory(
    _SelectSubCategory event,
    Emitter<ProfileStepperState> emit,
  ) {
    if (event.subCategory?.name == "others") {
      return emit(
        state.copyWith(
          isOtherSubCategory: true,
          subCategoryId: event.subCategory?.id,
          othersSubCategoryName: null,
        ),
      );
    }
    return emit(
      state.copyWith(
        isOtherSubCategory: false,
        subCategoryId: event.subCategory?.id,
        othersSubCategoryName: null,
      ),
    );
  }

  void _onSelectExperience(
    _SelectExperience event,
    Emitter<ProfileStepperState> emit,
  ) {
    emit(state.copyWith(experienceId: event.experience?.id));
  }

  void _onUpdateAbout(_UpdateAbout event, Emitter<ProfileStepperState> emit) {
    emit(state.copyWith(about: event.about));
  }

  void _onUpdateLanguages(
    _UpdateLanguages event,
    Emitter<ProfileStepperState> emit,
  ) {
    final languages = Set<String>.from(state.languages);

    if (languages.contains(event.language)) {
      languages.remove(event.language);
    } else {
      if (languages.length >= 5) return;

      languages.add(event.language);
    }

    emit(state.copyWith(languages: languages.toList()));
  }

  void _onReset(_Reset event, Emitter<ProfileStepperState> emit) {
    emit(const ProfileStepperState());
  }

  @override
  ProfileStepperState? fromJson(Map<String, dynamic> json) {
    try {
      return ProfileStepperState.fromJson(json);
    } catch (_) {
      return const ProfileStepperState();
    }
  }

  @override
  Map<String, dynamic>? toJson(ProfileStepperState state) {
    try {
      return state.toJson();
    } catch (_) {
      return null;
    }
  }
}
