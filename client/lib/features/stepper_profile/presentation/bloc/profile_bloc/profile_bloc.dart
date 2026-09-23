import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/stepper_profile/domain/entities/category_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/experience_entity.dart';
import 'package:client/features/stepper_profile/domain/entities/sub_categories_entity.dart';
import 'package:client/features/stepper_profile/domain/usecases/category_usecase.dart';
import 'package:client/features/stepper_profile/domain/usecases/experience_usecase.dart';
import 'package:client/features/stepper_profile/domain/usecases/sub_category_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final CategoryUsecase _categoryUsecase;
  final SubCategoryUsecase _subCategoryUsecase;
  final ExperienceUsecase _experienceUsecase;
  ProfileBloc(
    this._categoryUsecase,
    this._subCategoryUsecase,
    this._experienceUsecase,
  ) : super(const ProfileState.initial()) {
    on<_GetInitialData>(_onGetInitialData, transformer: restartable());
    on<_GetSubCategories>(_onGetSubCategories, transformer: restartable());
  }

  FutureOr<void> _onGetInitialData(
    _GetInitialData event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    
    final results = await Future.wait([
      _categoryUsecase(const NoParams()),
      _experienceUsecase(const NoParams()),
    ]);
    final categoriesResult = results[0];
    final experiencesResult = results[1];

    final categories = categoriesResult.fold(
      (failure) => failure,
      (data) => data,
    );
    final experiences = experiencesResult.fold(
      (failure) => failure,
      (data) => data,
    );

    if (categories is Failure) {
      emit(ProfileState.error(categories.message));
      return;
    }
    if (experiences is Failure) {
      emit(ProfileState.error(experiences.message));
      return;
    }
    emit(
      ProfileState.loaded(
        categories: categories as List<CategoryEntity>,
        experiences: experiences as List<ExperienceEntity>,
      ),
    );
  }

  FutureOr<void> _onGetSubCategories(
    _GetSubCategories event,
    Emitter<ProfileState> emit,
  ) async {
    final result = await _subCategoryUsecase(event.id);

    result.match(
      (failure) {
        emit(ProfileState.error(failure.message));
      },
      (response) {
        if (state is _Loaded) {
          final currentState = state as _Loaded;
          emit(currentState.copyWith(subCategories: response));
        }
      },
    );
  }
}
