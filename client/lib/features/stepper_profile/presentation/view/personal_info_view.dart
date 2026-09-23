import 'dart:developer';

import 'package:client/core/components/common_dropDown.dart';
import 'package:client/core/components/custom_button.dart';
import 'package:client/core/components/custom_text_field.dart';
import 'package:client/core/extension/padding_extension.dart';
import 'package:client/core/extension/string_extension.dart';
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/features/stepper_profile/domain/entities/category_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/experience_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/sub_categories_entity.dart';
import 'package:client/features/stepper_profile/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:client/features/stepper_profile/presentation/bloc/stepper_bloc/profile_stepper_bloc.dart';
import 'package:client/features/stepper_profile/utils/personal_info_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../core/extension/context_extension.dart';

List<String> _combinedIndiaDubaiLanguages = [
  // India Languages
  'English',
  'Hindi',
  'Urdu',
  'Arabic',
  'Tagalog',
  'Persian',
  'Bengali',
  'Marathi',
  'Telugu',
  'Tamil',
  'Gujarati',
  'Kannada',
  'Odia',
  'Malayalam',
  'Punjabi',
  'Assamese',
];

class PersonalInfoView extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;
  final ProfileBloc bloc;
  final ProfileStepperBloc stepperBloc;
  final PageController controller;
  const PersonalInfoView({
    super.key,
    required this.formKey,
    required this.controller,
    required this.stepperBloc,
    required this.bloc,
  });

  @override
  State<PersonalInfoView> createState() => _PersonalInfoViewState();
}

class _PersonalInfoViewState extends State<PersonalInfoView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _restoreHydratedState();
    });
  }

  void _restoreHydratedState() {
    final state = widget.stepperBloc.state;
    _populateFormFields(state);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileStepperBloc, ProfileStepperState>(
      listener: (context, state) {
        if (state.categoryId != null) {
          widget.bloc.add(ProfileEvent.getSubCategories(id: state.categoryId!));
        }
      },
      bloc: widget.stepperBloc,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.horizontalspacing,
          vertical: Dimens.verticalspacing,
        ),
        child: FormBuilder(
          key: widget.formKey,
          child: Column(
            spacing: Dimens.widgetSpacing,
            children: [
              _aboutField(),

              _categoryField(),

              _subCategoryField(),

              _experienceField(),

              _languagesField(),

              CustomButton(onPressed: _onNext, text: "Next"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _aboutField() {
    return CustomTextForm(
      labelText: PersonalInfoFields.about,
      name: PersonalInfoFields.about,
      hintText: "Tell about your expertise to the world",
      // validator: FormValidators.validateData(
      //   "Please provide about your experience",
      // ),
      maxLines: 8,
    );
  }

  Widget _categoryField() {
    return Column(
      children: [
        BlocSelector<ProfileBloc, ProfileState, List<CategoryEntity>?>(
          bloc: widget.bloc,
          selector: (state) {
            return state.mapOrNull(loaded: (value) => value.categories);
          },
          builder: (context, values) {
            return CustomDropDown<CategoryEntity?>(
              initialData: _findCategory(
                widget.bloc.state,
                widget.stepperBloc.state.categoryId,
              ),
              heading: PersonalInfoFields.category,
              hintText: 'Select from Dropdown',
              items: values,
              labelExtractor: (v) => v?.name.toCapitalize() ?? "",
              onChanged: (value) => widget.stepperBloc.add(
                ProfileStepperEvent.selectCategory(category: value),
              ),
              validator: (item) {
                if (item == null) {
                  return "Please select one option";
                }
                return null;
              },
            );
          },
        ),
        BlocSelector<ProfileStepperBloc, ProfileStepperState, bool>(
          bloc: widget.stepperBloc,
          selector: (state) {
            return state.isOtherCategory;
          },
          builder: (context, value) {
            if (!value) return SizedBox.shrink();
            return CustomTextForm(
              name: PersonalInfoFields.otherCategoryName,
              hintText: "Ex: Designer",
              // validator: FormValidators.validateData(
              //   "Please provide new category name",
              // ),
            ).onlyPadding(top: Dimens.gapX1B);
          },
        ),
      ],
    );
  }

  Widget _subCategoryField() {
    return Column(
      children: [
        BlocSelector<ProfileBloc, ProfileState, List<SubCategoryEntity>?>(
          bloc: widget.bloc,
          selector: (state) {
            return state.mapOrNull(loaded: (value) => value.subCategories);
          },
          builder: (_, values) {
            return CustomDropDown<SubCategoryEntity?>(
              initialData: _findSubCategory(
                widget.bloc.state,
                widget.stepperBloc.state.subCategoryId,
              ),
              heading: PersonalInfoFields.subCategory,
              hintText: 'Select from Dropdown',
              items: values,
              labelExtractor: (v) => v?.name.toCapitalize() ?? "",
              onChanged: (value) => widget.stepperBloc.add(
                ProfileStepperEvent.selectSubCategory(subCategory: value),
              ),
              validator: (item) {
                if (item == null) {
                  return "Please select one option";
                }
                return null;
              },
            );
          },
        ),
        BlocSelector<ProfileStepperBloc, ProfileStepperState, bool>(
          bloc: widget.stepperBloc,
          selector: (state) {
            return state.isOtherSubCategory;
          },
          builder: (_, value) {
            if (!value) return SizedBox.shrink();

            return CustomTextForm(
              name: PersonalInfoFields.othersSubCategoryName,
              hintText: "Ex: Figma Designer, Photo Editor",
              // validator: FormValidators.validateData(
              //   "Please provide new sub category name",
              // ),
            ).onlyPadding(top: Dimens.gapX1B);
          },
        ),
      ],
    );
  }

  Widget _experienceField() {
    return BlocSelector<ProfileBloc, ProfileState, List<ExperienceEntity>?>(
      bloc: widget.bloc,
      selector: (state) {
        return state.mapOrNull(loaded: (value) => value.experiences);
      },
      builder: (context, values) {
        return CustomDropDown<ExperienceEntity?>(
          initialData: _findExperience(
            widget.bloc.state,
            widget.stepperBloc.state.experienceId,
          ),
          heading: PersonalInfoFields.experience,
          hintText: 'Select from Dropdown',
          items: values,
          labelExtractor: (v) => v?.experience ?? "",
          validator: (item) {
            if (item == null) {
              return "Please select one option";
            }
            return null;
          },
          onChanged: (value) => widget.stepperBloc.add(
            ProfileStepperEvent.selectExperience(experience: value),
          ),
        );
      },
    );
  }

  Widget _languagesField() {
    return BlocSelector<ProfileStepperBloc, ProfileStepperState, List<String>>(
      bloc: widget.stepperBloc,
      selector: (state) => state.languages,
      builder: (context, launguages) {
        return Column(
          crossAxisAlignment: .start,
          mainAxisSize: .max,
          spacing: Dimens.gapX2,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Languages", style: context.textTheme.titleSmall),
                Text(
                  "(${launguages.length}/5)",
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
            Wrap(
              spacing: Dimens.gapX1B,
              runSpacing: Dimens.gapX1B,
              children: List.generate(_combinedIndiaDubaiLanguages.length, (
                index,
              ) {
                final value = _combinedIndiaDubaiLanguages[index];
                final isSelected = launguages.contains(value);
                return GestureDetector(
                  onTap: () {
                    widget.stepperBloc.add(
                      ProfileStepperEvent.updateLanguages(language: value),
                    );
                  },
                  child: AnimatedContainer(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimens.horPaddingX3,
                      vertical: Dimens.verPaddingX2,
                    ),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.radius100),
                      color: isSelected
                          ? AppPalettes.primaryDark
                          : AppPalettes.grey,
                      border: Border.all(
                        color: isSelected
                            ? AppPalettes.transparent
                            : AppPalettes.primary.withOpacityExt(0.5),
                        width: 1,
                      ),
                    ),

                    child: Text(
                      _combinedIndiaDubaiLanguages[index],
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: isSelected
                            ? AppPalettes.white
                            : AppPalettes.textPrimary,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }

  void _populateFormFields(ProfileStepperState? state) {
    final formState = widget.formKey.currentState;

    if (formState == null) return;

    formState.patchValue({
      PersonalInfoFields.about: state?.about ?? '',
      PersonalInfoFields.otherCategoryName: state?.othersCategoryName,
      PersonalInfoFields.othersSubCategoryName: state?.othersSubCategoryName,
    });
  }

  void _onNext() {
    final form = widget.formKey.currentState;
    if (form == null) return;

    if (!form.saveAndValidate()) {
      return;
    }
    final languages = widget.stepperBloc.state.languages;
    if (languages.isEmpty) {
      // CommonSnackbar(
      //   text: "Please select one languages",
      // ).showToast();
      return;
    }

    final stepperState = widget.stepperBloc.state;

    final categoryId = stepperState.categoryId;
    final subCategoryId = stepperState.subCategoryId;
    final experienceId = stepperState.experienceId;
    if (categoryId == null || subCategoryId == null || experienceId == null) {
      // CommonSnackbar(
      //   text: "Please fill all the Details",
      // ).showToast();
      return;
    }
    final formData = form.value;

    final about = formData[PersonalInfoFields.about] as String? ?? '';
    final othersCategoryName =
        formData[PersonalInfoFields.otherCategoryName] as String? ?? '';
    final othersSubCategoryName =
        formData[PersonalInfoFields.othersSubCategoryName] as String? ?? '';

    final profileState = widget.bloc.state;

    final category = _findCategory(profileState, categoryId);

    final subCategory = _findSubCategory(profileState, subCategoryId);

    final experience = _findExperience(profileState, experienceId);

    if (category == null || subCategory == null || experience == null) {
      return;
    }
    widget.stepperBloc.add(
      ProfileStepperEvent.savePersonalInfo(
        category: category,
        subCategory: subCategory,
        experience: experience,
        about: about,
        languages: languages,
        othersCategoryName: othersCategoryName,
        othersSubCategoryName: othersSubCategoryName,
      ),
    );
    widget.controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  CategoryEntity? _findCategory(ProfileState state, dynamic id) {
    return state.mapOrNull(
      loaded: (value) {
        for (final category in value.categories) {
          if (category.id == id) {
            return category;
          }
        }

        return null;
      },
    );
  }

  SubCategoryEntity? _findSubCategory(ProfileState state, dynamic id) {
    return state.mapOrNull(
      loaded: (value) {
        for (final subCategory in value.subCategories) {
          if (subCategory.id == id) {
            return subCategory;
          }
        }

        return null;
      },
    );
  }

  ExperienceEntity? _findExperience(ProfileState state, dynamic id) {
    return state.mapOrNull(
      loaded: (value) {
        for (final experience in value.experiences) {
          if (experience.id == id) {
            return experience;
          }
        }

        return null;
      },
    );
  }
}
