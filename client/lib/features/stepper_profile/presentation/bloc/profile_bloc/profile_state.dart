part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.error(String message) = _Error;

  const factory ProfileState.loaded({
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<ExperienceEntity> experiences,
    @Default([]) List<SubCategoryEntity> subCategories,
  }) = _Loaded;
}
