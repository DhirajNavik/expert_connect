// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_stepper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileStepperEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStepperEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStepperEvent()';
}


}

/// @nodoc
class $ProfileStepperEventCopyWith<$Res>  {
$ProfileStepperEventCopyWith(ProfileStepperEvent _, $Res Function(ProfileStepperEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileStepperEvent].
extension ProfileStepperEventPatterns on ProfileStepperEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetStep value)?  setStep,TResult Function( _NextStep value)?  nextStep,TResult Function( _PreviousStep value)?  previousStep,TResult Function( _SavePersonalInfo value)?  savePersonalInfo,TResult Function( _SelectCategory value)?  selectCategory,TResult Function( _SelectSubCategory value)?  selectSubCategory,TResult Function( _SelectExperience value)?  selectExperience,TResult Function( _UpdateAbout value)?  updateAbout,TResult Function( _UpdateLanguages value)?  updateLanguages,TResult Function( _Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetStep() when setStep != null:
return setStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _PreviousStep() when previousStep != null:
return previousStep(_that);case _SavePersonalInfo() when savePersonalInfo != null:
return savePersonalInfo(_that);case _SelectCategory() when selectCategory != null:
return selectCategory(_that);case _SelectSubCategory() when selectSubCategory != null:
return selectSubCategory(_that);case _SelectExperience() when selectExperience != null:
return selectExperience(_that);case _UpdateAbout() when updateAbout != null:
return updateAbout(_that);case _UpdateLanguages() when updateLanguages != null:
return updateLanguages(_that);case _Reset() when reset != null:
return reset(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetStep value)  setStep,required TResult Function( _NextStep value)  nextStep,required TResult Function( _PreviousStep value)  previousStep,required TResult Function( _SavePersonalInfo value)  savePersonalInfo,required TResult Function( _SelectCategory value)  selectCategory,required TResult Function( _SelectSubCategory value)  selectSubCategory,required TResult Function( _SelectExperience value)  selectExperience,required TResult Function( _UpdateAbout value)  updateAbout,required TResult Function( _UpdateLanguages value)  updateLanguages,required TResult Function( _Reset value)  reset,}){
final _that = this;
switch (_that) {
case _SetStep():
return setStep(_that);case _NextStep():
return nextStep(_that);case _PreviousStep():
return previousStep(_that);case _SavePersonalInfo():
return savePersonalInfo(_that);case _SelectCategory():
return selectCategory(_that);case _SelectSubCategory():
return selectSubCategory(_that);case _SelectExperience():
return selectExperience(_that);case _UpdateAbout():
return updateAbout(_that);case _UpdateLanguages():
return updateLanguages(_that);case _Reset():
return reset(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetStep value)?  setStep,TResult? Function( _NextStep value)?  nextStep,TResult? Function( _PreviousStep value)?  previousStep,TResult? Function( _SavePersonalInfo value)?  savePersonalInfo,TResult? Function( _SelectCategory value)?  selectCategory,TResult? Function( _SelectSubCategory value)?  selectSubCategory,TResult? Function( _SelectExperience value)?  selectExperience,TResult? Function( _UpdateAbout value)?  updateAbout,TResult? Function( _UpdateLanguages value)?  updateLanguages,TResult? Function( _Reset value)?  reset,}){
final _that = this;
switch (_that) {
case _SetStep() when setStep != null:
return setStep(_that);case _NextStep() when nextStep != null:
return nextStep(_that);case _PreviousStep() when previousStep != null:
return previousStep(_that);case _SavePersonalInfo() when savePersonalInfo != null:
return savePersonalInfo(_that);case _SelectCategory() when selectCategory != null:
return selectCategory(_that);case _SelectSubCategory() when selectSubCategory != null:
return selectSubCategory(_that);case _SelectExperience() when selectExperience != null:
return selectExperience(_that);case _UpdateAbout() when updateAbout != null:
return updateAbout(_that);case _UpdateLanguages() when updateLanguages != null:
return updateLanguages(_that);case _Reset() when reset != null:
return reset(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int step)?  setStep,TResult Function()?  nextStep,TResult Function()?  previousStep,TResult Function( CategoryEntity category,  SubCategoryEntity subCategory,  ExperienceEntity experience,  String about,  List<String> languages,  String? othersCategoryName,  String? othersSubCategoryName,  bool? isOtherCategory,  bool? isOtherSubCategory)?  savePersonalInfo,TResult Function( CategoryEntity? category)?  selectCategory,TResult Function( SubCategoryEntity? subCategory)?  selectSubCategory,TResult Function( ExperienceEntity? experience)?  selectExperience,TResult Function( String about)?  updateAbout,TResult Function( String language)?  updateLanguages,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetStep() when setStep != null:
return setStep(_that.step);case _NextStep() when nextStep != null:
return nextStep();case _PreviousStep() when previousStep != null:
return previousStep();case _SavePersonalInfo() when savePersonalInfo != null:
return savePersonalInfo(_that.category,_that.subCategory,_that.experience,_that.about,_that.languages,_that.othersCategoryName,_that.othersSubCategoryName,_that.isOtherCategory,_that.isOtherSubCategory);case _SelectCategory() when selectCategory != null:
return selectCategory(_that.category);case _SelectSubCategory() when selectSubCategory != null:
return selectSubCategory(_that.subCategory);case _SelectExperience() when selectExperience != null:
return selectExperience(_that.experience);case _UpdateAbout() when updateAbout != null:
return updateAbout(_that.about);case _UpdateLanguages() when updateLanguages != null:
return updateLanguages(_that.language);case _Reset() when reset != null:
return reset();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int step)  setStep,required TResult Function()  nextStep,required TResult Function()  previousStep,required TResult Function( CategoryEntity category,  SubCategoryEntity subCategory,  ExperienceEntity experience,  String about,  List<String> languages,  String? othersCategoryName,  String? othersSubCategoryName,  bool? isOtherCategory,  bool? isOtherSubCategory)  savePersonalInfo,required TResult Function( CategoryEntity? category)  selectCategory,required TResult Function( SubCategoryEntity? subCategory)  selectSubCategory,required TResult Function( ExperienceEntity? experience)  selectExperience,required TResult Function( String about)  updateAbout,required TResult Function( String language)  updateLanguages,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _SetStep():
return setStep(_that.step);case _NextStep():
return nextStep();case _PreviousStep():
return previousStep();case _SavePersonalInfo():
return savePersonalInfo(_that.category,_that.subCategory,_that.experience,_that.about,_that.languages,_that.othersCategoryName,_that.othersSubCategoryName,_that.isOtherCategory,_that.isOtherSubCategory);case _SelectCategory():
return selectCategory(_that.category);case _SelectSubCategory():
return selectSubCategory(_that.subCategory);case _SelectExperience():
return selectExperience(_that.experience);case _UpdateAbout():
return updateAbout(_that.about);case _UpdateLanguages():
return updateLanguages(_that.language);case _Reset():
return reset();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int step)?  setStep,TResult? Function()?  nextStep,TResult? Function()?  previousStep,TResult? Function( CategoryEntity category,  SubCategoryEntity subCategory,  ExperienceEntity experience,  String about,  List<String> languages,  String? othersCategoryName,  String? othersSubCategoryName,  bool? isOtherCategory,  bool? isOtherSubCategory)?  savePersonalInfo,TResult? Function( CategoryEntity? category)?  selectCategory,TResult? Function( SubCategoryEntity? subCategory)?  selectSubCategory,TResult? Function( ExperienceEntity? experience)?  selectExperience,TResult? Function( String about)?  updateAbout,TResult? Function( String language)?  updateLanguages,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _SetStep() when setStep != null:
return setStep(_that.step);case _NextStep() when nextStep != null:
return nextStep();case _PreviousStep() when previousStep != null:
return previousStep();case _SavePersonalInfo() when savePersonalInfo != null:
return savePersonalInfo(_that.category,_that.subCategory,_that.experience,_that.about,_that.languages,_that.othersCategoryName,_that.othersSubCategoryName,_that.isOtherCategory,_that.isOtherSubCategory);case _SelectCategory() when selectCategory != null:
return selectCategory(_that.category);case _SelectSubCategory() when selectSubCategory != null:
return selectSubCategory(_that.subCategory);case _SelectExperience() when selectExperience != null:
return selectExperience(_that.experience);case _UpdateAbout() when updateAbout != null:
return updateAbout(_that.about);case _UpdateLanguages() when updateLanguages != null:
return updateLanguages(_that.language);case _Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _SetStep implements ProfileStepperEvent {
  const _SetStep(this.step);
  

 final  int step;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetStepCopyWith<_SetStep> get copyWith => __$SetStepCopyWithImpl<_SetStep>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetStep&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode => Object.hash(runtimeType,step);

@override
String toString() {
  return 'ProfileStepperEvent.setStep(step: $step)';
}


}

/// @nodoc
abstract mixin class _$SetStepCopyWith<$Res> implements $ProfileStepperEventCopyWith<$Res> {
  factory _$SetStepCopyWith(_SetStep value, $Res Function(_SetStep) _then) = __$SetStepCopyWithImpl;
@useResult
$Res call({
 int step
});




}
/// @nodoc
class __$SetStepCopyWithImpl<$Res>
    implements _$SetStepCopyWith<$Res> {
  __$SetStepCopyWithImpl(this._self, this._then);

  final _SetStep _self;
  final $Res Function(_SetStep) _then;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? step = null,}) {
  return _then(_SetStep(
null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _NextStep implements ProfileStepperEvent {
  const _NextStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStepperEvent.nextStep()';
}


}




/// @nodoc


class _PreviousStep implements ProfileStepperEvent {
  const _PreviousStep();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousStep);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStepperEvent.previousStep()';
}


}




/// @nodoc


class _SavePersonalInfo implements ProfileStepperEvent {
  const _SavePersonalInfo({required this.category, required this.subCategory, required this.experience, required this.about, required final  List<String> languages, this.othersCategoryName, this.othersSubCategoryName, this.isOtherCategory, this.isOtherSubCategory}): _languages = languages;
  

 final  CategoryEntity category;
 final  SubCategoryEntity subCategory;
 final  ExperienceEntity experience;
 final  String about;
 final  List<String> _languages;
 List<String> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

 final  String? othersCategoryName;
 final  String? othersSubCategoryName;
 final  bool? isOtherCategory;
 final  bool? isOtherSubCategory;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavePersonalInfoCopyWith<_SavePersonalInfo> get copyWith => __$SavePersonalInfoCopyWithImpl<_SavePersonalInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavePersonalInfo&&(identical(other.category, category) || other.category == category)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.about, about) || other.about == about)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.othersCategoryName, othersCategoryName) || other.othersCategoryName == othersCategoryName)&&(identical(other.othersSubCategoryName, othersSubCategoryName) || other.othersSubCategoryName == othersSubCategoryName)&&(identical(other.isOtherCategory, isOtherCategory) || other.isOtherCategory == isOtherCategory)&&(identical(other.isOtherSubCategory, isOtherSubCategory) || other.isOtherSubCategory == isOtherSubCategory));
}


@override
int get hashCode => Object.hash(runtimeType,category,subCategory,experience,about,const DeepCollectionEquality().hash(_languages),othersCategoryName,othersSubCategoryName,isOtherCategory,isOtherSubCategory);

@override
String toString() {
  return 'ProfileStepperEvent.savePersonalInfo(category: $category, subCategory: $subCategory, experience: $experience, about: $about, languages: $languages, othersCategoryName: $othersCategoryName, othersSubCategoryName: $othersSubCategoryName, isOtherCategory: $isOtherCategory, isOtherSubCategory: $isOtherSubCategory)';
}


}

/// @nodoc
abstract mixin class _$SavePersonalInfoCopyWith<$Res> implements $ProfileStepperEventCopyWith<$Res> {
  factory _$SavePersonalInfoCopyWith(_SavePersonalInfo value, $Res Function(_SavePersonalInfo) _then) = __$SavePersonalInfoCopyWithImpl;
@useResult
$Res call({
 CategoryEntity category, SubCategoryEntity subCategory, ExperienceEntity experience, String about, List<String> languages, String? othersCategoryName, String? othersSubCategoryName, bool? isOtherCategory, bool? isOtherSubCategory
});




}
/// @nodoc
class __$SavePersonalInfoCopyWithImpl<$Res>
    implements _$SavePersonalInfoCopyWith<$Res> {
  __$SavePersonalInfoCopyWithImpl(this._self, this._then);

  final _SavePersonalInfo _self;
  final $Res Function(_SavePersonalInfo) _then;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,Object? subCategory = null,Object? experience = null,Object? about = null,Object? languages = null,Object? othersCategoryName = freezed,Object? othersSubCategoryName = freezed,Object? isOtherCategory = freezed,Object? isOtherSubCategory = freezed,}) {
  return _then(_SavePersonalInfo(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,subCategory: null == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryEntity,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as ExperienceEntity,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,othersCategoryName: freezed == othersCategoryName ? _self.othersCategoryName : othersCategoryName // ignore: cast_nullable_to_non_nullable
as String?,othersSubCategoryName: freezed == othersSubCategoryName ? _self.othersSubCategoryName : othersSubCategoryName // ignore: cast_nullable_to_non_nullable
as String?,isOtherCategory: freezed == isOtherCategory ? _self.isOtherCategory : isOtherCategory // ignore: cast_nullable_to_non_nullable
as bool?,isOtherSubCategory: freezed == isOtherSubCategory ? _self.isOtherSubCategory : isOtherSubCategory // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _SelectCategory implements ProfileStepperEvent {
  const _SelectCategory({required this.category});
  

 final  CategoryEntity? category;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectCategoryCopyWith<_SelectCategory> get copyWith => __$SelectCategoryCopyWithImpl<_SelectCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ProfileStepperEvent.selectCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class _$SelectCategoryCopyWith<$Res> implements $ProfileStepperEventCopyWith<$Res> {
  factory _$SelectCategoryCopyWith(_SelectCategory value, $Res Function(_SelectCategory) _then) = __$SelectCategoryCopyWithImpl;
@useResult
$Res call({
 CategoryEntity? category
});




}
/// @nodoc
class __$SelectCategoryCopyWithImpl<$Res>
    implements _$SelectCategoryCopyWith<$Res> {
  __$SelectCategoryCopyWithImpl(this._self, this._then);

  final _SelectCategory _self;
  final $Res Function(_SelectCategory) _then;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = freezed,}) {
  return _then(_SelectCategory(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity?,
  ));
}


}

/// @nodoc


class _SelectSubCategory implements ProfileStepperEvent {
  const _SelectSubCategory({required this.subCategory});
  

 final  SubCategoryEntity? subCategory;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectSubCategoryCopyWith<_SelectSubCategory> get copyWith => __$SelectSubCategoryCopyWithImpl<_SelectSubCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectSubCategory&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory));
}


@override
int get hashCode => Object.hash(runtimeType,subCategory);

@override
String toString() {
  return 'ProfileStepperEvent.selectSubCategory(subCategory: $subCategory)';
}


}

/// @nodoc
abstract mixin class _$SelectSubCategoryCopyWith<$Res> implements $ProfileStepperEventCopyWith<$Res> {
  factory _$SelectSubCategoryCopyWith(_SelectSubCategory value, $Res Function(_SelectSubCategory) _then) = __$SelectSubCategoryCopyWithImpl;
@useResult
$Res call({
 SubCategoryEntity? subCategory
});




}
/// @nodoc
class __$SelectSubCategoryCopyWithImpl<$Res>
    implements _$SelectSubCategoryCopyWith<$Res> {
  __$SelectSubCategoryCopyWithImpl(this._self, this._then);

  final _SelectSubCategory _self;
  final $Res Function(_SelectSubCategory) _then;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? subCategory = freezed,}) {
  return _then(_SelectSubCategory(
subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryEntity?,
  ));
}


}

/// @nodoc


class _SelectExperience implements ProfileStepperEvent {
  const _SelectExperience({required this.experience});
  

 final  ExperienceEntity? experience;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectExperienceCopyWith<_SelectExperience> get copyWith => __$SelectExperienceCopyWithImpl<_SelectExperience>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectExperience&&(identical(other.experience, experience) || other.experience == experience));
}


@override
int get hashCode => Object.hash(runtimeType,experience);

@override
String toString() {
  return 'ProfileStepperEvent.selectExperience(experience: $experience)';
}


}

/// @nodoc
abstract mixin class _$SelectExperienceCopyWith<$Res> implements $ProfileStepperEventCopyWith<$Res> {
  factory _$SelectExperienceCopyWith(_SelectExperience value, $Res Function(_SelectExperience) _then) = __$SelectExperienceCopyWithImpl;
@useResult
$Res call({
 ExperienceEntity? experience
});




}
/// @nodoc
class __$SelectExperienceCopyWithImpl<$Res>
    implements _$SelectExperienceCopyWith<$Res> {
  __$SelectExperienceCopyWithImpl(this._self, this._then);

  final _SelectExperience _self;
  final $Res Function(_SelectExperience) _then;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? experience = freezed,}) {
  return _then(_SelectExperience(
experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as ExperienceEntity?,
  ));
}


}

/// @nodoc


class _UpdateAbout implements ProfileStepperEvent {
  const _UpdateAbout({required this.about});
  

 final  String about;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAboutCopyWith<_UpdateAbout> get copyWith => __$UpdateAboutCopyWithImpl<_UpdateAbout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAbout&&(identical(other.about, about) || other.about == about));
}


@override
int get hashCode => Object.hash(runtimeType,about);

@override
String toString() {
  return 'ProfileStepperEvent.updateAbout(about: $about)';
}


}

/// @nodoc
abstract mixin class _$UpdateAboutCopyWith<$Res> implements $ProfileStepperEventCopyWith<$Res> {
  factory _$UpdateAboutCopyWith(_UpdateAbout value, $Res Function(_UpdateAbout) _then) = __$UpdateAboutCopyWithImpl;
@useResult
$Res call({
 String about
});




}
/// @nodoc
class __$UpdateAboutCopyWithImpl<$Res>
    implements _$UpdateAboutCopyWith<$Res> {
  __$UpdateAboutCopyWithImpl(this._self, this._then);

  final _UpdateAbout _self;
  final $Res Function(_UpdateAbout) _then;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? about = null,}) {
  return _then(_UpdateAbout(
about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateLanguages implements ProfileStepperEvent {
  const _UpdateLanguages({required this.language});
  

 final  String language;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateLanguagesCopyWith<_UpdateLanguages> get copyWith => __$UpdateLanguagesCopyWithImpl<_UpdateLanguages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateLanguages&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'ProfileStepperEvent.updateLanguages(language: $language)';
}


}

/// @nodoc
abstract mixin class _$UpdateLanguagesCopyWith<$Res> implements $ProfileStepperEventCopyWith<$Res> {
  factory _$UpdateLanguagesCopyWith(_UpdateLanguages value, $Res Function(_UpdateLanguages) _then) = __$UpdateLanguagesCopyWithImpl;
@useResult
$Res call({
 String language
});




}
/// @nodoc
class __$UpdateLanguagesCopyWithImpl<$Res>
    implements _$UpdateLanguagesCopyWith<$Res> {
  __$UpdateLanguagesCopyWithImpl(this._self, this._then);

  final _UpdateLanguages _self;
  final $Res Function(_UpdateLanguages) _then;

/// Create a copy of ProfileStepperEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(_UpdateLanguages(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Reset implements ProfileStepperEvent {
  const _Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStepperEvent.reset()';
}


}





/// @nodoc
mixin _$ProfileStepperState {

 int get currentStep; String? get categoryId; String? get subCategoryId; String? get experienceId; String get about; List<String> get languages; bool get isOtherCategory; String? get othersCategoryName; bool get isOtherSubCategory; String? get othersSubCategoryName;
/// Create a copy of ProfileStepperState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStepperStateCopyWith<ProfileStepperState> get copyWith => _$ProfileStepperStateCopyWithImpl<ProfileStepperState>(this as ProfileStepperState, _$identity);

  /// Serializes this ProfileStepperState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStepperState&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.experienceId, experienceId) || other.experienceId == experienceId)&&(identical(other.about, about) || other.about == about)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.isOtherCategory, isOtherCategory) || other.isOtherCategory == isOtherCategory)&&(identical(other.othersCategoryName, othersCategoryName) || other.othersCategoryName == othersCategoryName)&&(identical(other.isOtherSubCategory, isOtherSubCategory) || other.isOtherSubCategory == isOtherSubCategory)&&(identical(other.othersSubCategoryName, othersSubCategoryName) || other.othersSubCategoryName == othersSubCategoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentStep,categoryId,subCategoryId,experienceId,about,const DeepCollectionEquality().hash(languages),isOtherCategory,othersCategoryName,isOtherSubCategory,othersSubCategoryName);

@override
String toString() {
  return 'ProfileStepperState(currentStep: $currentStep, categoryId: $categoryId, subCategoryId: $subCategoryId, experienceId: $experienceId, about: $about, languages: $languages, isOtherCategory: $isOtherCategory, othersCategoryName: $othersCategoryName, isOtherSubCategory: $isOtherSubCategory, othersSubCategoryName: $othersSubCategoryName)';
}


}

/// @nodoc
abstract mixin class $ProfileStepperStateCopyWith<$Res>  {
  factory $ProfileStepperStateCopyWith(ProfileStepperState value, $Res Function(ProfileStepperState) _then) = _$ProfileStepperStateCopyWithImpl;
@useResult
$Res call({
 int currentStep, String? categoryId, String? subCategoryId, String? experienceId, String about, List<String> languages, bool isOtherCategory, String? othersCategoryName, bool isOtherSubCategory, String? othersSubCategoryName
});




}
/// @nodoc
class _$ProfileStepperStateCopyWithImpl<$Res>
    implements $ProfileStepperStateCopyWith<$Res> {
  _$ProfileStepperStateCopyWithImpl(this._self, this._then);

  final ProfileStepperState _self;
  final $Res Function(ProfileStepperState) _then;

/// Create a copy of ProfileStepperState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentStep = null,Object? categoryId = freezed,Object? subCategoryId = freezed,Object? experienceId = freezed,Object? about = null,Object? languages = null,Object? isOtherCategory = null,Object? othersCategoryName = freezed,Object? isOtherSubCategory = null,Object? othersSubCategoryName = freezed,}) {
  return _then(_self.copyWith(
currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subCategoryId: freezed == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as String?,experienceId: freezed == experienceId ? _self.experienceId : experienceId // ignore: cast_nullable_to_non_nullable
as String?,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,isOtherCategory: null == isOtherCategory ? _self.isOtherCategory : isOtherCategory // ignore: cast_nullable_to_non_nullable
as bool,othersCategoryName: freezed == othersCategoryName ? _self.othersCategoryName : othersCategoryName // ignore: cast_nullable_to_non_nullable
as String?,isOtherSubCategory: null == isOtherSubCategory ? _self.isOtherSubCategory : isOtherSubCategory // ignore: cast_nullable_to_non_nullable
as bool,othersSubCategoryName: freezed == othersSubCategoryName ? _self.othersSubCategoryName : othersSubCategoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileStepperState].
extension ProfileStepperStatePatterns on ProfileStepperState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileStepperState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileStepperState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileStepperState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileStepperState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileStepperState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileStepperState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentStep,  String? categoryId,  String? subCategoryId,  String? experienceId,  String about,  List<String> languages,  bool isOtherCategory,  String? othersCategoryName,  bool isOtherSubCategory,  String? othersSubCategoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileStepperState() when $default != null:
return $default(_that.currentStep,_that.categoryId,_that.subCategoryId,_that.experienceId,_that.about,_that.languages,_that.isOtherCategory,_that.othersCategoryName,_that.isOtherSubCategory,_that.othersSubCategoryName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentStep,  String? categoryId,  String? subCategoryId,  String? experienceId,  String about,  List<String> languages,  bool isOtherCategory,  String? othersCategoryName,  bool isOtherSubCategory,  String? othersSubCategoryName)  $default,) {final _that = this;
switch (_that) {
case _ProfileStepperState():
return $default(_that.currentStep,_that.categoryId,_that.subCategoryId,_that.experienceId,_that.about,_that.languages,_that.isOtherCategory,_that.othersCategoryName,_that.isOtherSubCategory,_that.othersSubCategoryName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentStep,  String? categoryId,  String? subCategoryId,  String? experienceId,  String about,  List<String> languages,  bool isOtherCategory,  String? othersCategoryName,  bool isOtherSubCategory,  String? othersSubCategoryName)?  $default,) {final _that = this;
switch (_that) {
case _ProfileStepperState() when $default != null:
return $default(_that.currentStep,_that.categoryId,_that.subCategoryId,_that.experienceId,_that.about,_that.languages,_that.isOtherCategory,_that.othersCategoryName,_that.isOtherSubCategory,_that.othersSubCategoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileStepperState implements ProfileStepperState {
  const _ProfileStepperState({this.currentStep = 0, this.categoryId, this.subCategoryId, this.experienceId, this.about = '', final  List<String> languages = const <String>[], this.isOtherCategory = false, this.othersCategoryName, this.isOtherSubCategory = false, this.othersSubCategoryName}): _languages = languages;
  factory _ProfileStepperState.fromJson(Map<String, dynamic> json) => _$ProfileStepperStateFromJson(json);

@override@JsonKey() final  int currentStep;
@override final  String? categoryId;
@override final  String? subCategoryId;
@override final  String? experienceId;
@override@JsonKey() final  String about;
 final  List<String> _languages;
@override@JsonKey() List<String> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override@JsonKey() final  bool isOtherCategory;
@override final  String? othersCategoryName;
@override@JsonKey() final  bool isOtherSubCategory;
@override final  String? othersSubCategoryName;

/// Create a copy of ProfileStepperState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStepperStateCopyWith<_ProfileStepperState> get copyWith => __$ProfileStepperStateCopyWithImpl<_ProfileStepperState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileStepperStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileStepperState&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.experienceId, experienceId) || other.experienceId == experienceId)&&(identical(other.about, about) || other.about == about)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.isOtherCategory, isOtherCategory) || other.isOtherCategory == isOtherCategory)&&(identical(other.othersCategoryName, othersCategoryName) || other.othersCategoryName == othersCategoryName)&&(identical(other.isOtherSubCategory, isOtherSubCategory) || other.isOtherSubCategory == isOtherSubCategory)&&(identical(other.othersSubCategoryName, othersSubCategoryName) || other.othersSubCategoryName == othersSubCategoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentStep,categoryId,subCategoryId,experienceId,about,const DeepCollectionEquality().hash(_languages),isOtherCategory,othersCategoryName,isOtherSubCategory,othersSubCategoryName);

@override
String toString() {
  return 'ProfileStepperState(currentStep: $currentStep, categoryId: $categoryId, subCategoryId: $subCategoryId, experienceId: $experienceId, about: $about, languages: $languages, isOtherCategory: $isOtherCategory, othersCategoryName: $othersCategoryName, isOtherSubCategory: $isOtherSubCategory, othersSubCategoryName: $othersSubCategoryName)';
}


}

/// @nodoc
abstract mixin class _$ProfileStepperStateCopyWith<$Res> implements $ProfileStepperStateCopyWith<$Res> {
  factory _$ProfileStepperStateCopyWith(_ProfileStepperState value, $Res Function(_ProfileStepperState) _then) = __$ProfileStepperStateCopyWithImpl;
@override @useResult
$Res call({
 int currentStep, String? categoryId, String? subCategoryId, String? experienceId, String about, List<String> languages, bool isOtherCategory, String? othersCategoryName, bool isOtherSubCategory, String? othersSubCategoryName
});




}
/// @nodoc
class __$ProfileStepperStateCopyWithImpl<$Res>
    implements _$ProfileStepperStateCopyWith<$Res> {
  __$ProfileStepperStateCopyWithImpl(this._self, this._then);

  final _ProfileStepperState _self;
  final $Res Function(_ProfileStepperState) _then;

/// Create a copy of ProfileStepperState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentStep = null,Object? categoryId = freezed,Object? subCategoryId = freezed,Object? experienceId = freezed,Object? about = null,Object? languages = null,Object? isOtherCategory = null,Object? othersCategoryName = freezed,Object? isOtherSubCategory = null,Object? othersSubCategoryName = freezed,}) {
  return _then(_ProfileStepperState(
currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subCategoryId: freezed == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as String?,experienceId: freezed == experienceId ? _self.experienceId : experienceId // ignore: cast_nullable_to_non_nullable
as String?,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,isOtherCategory: null == isOtherCategory ? _self.isOtherCategory : isOtherCategory // ignore: cast_nullable_to_non_nullable
as bool,othersCategoryName: freezed == othersCategoryName ? _self.othersCategoryName : othersCategoryName // ignore: cast_nullable_to_non_nullable
as String?,isOtherSubCategory: null == isOtherSubCategory ? _self.isOtherSubCategory : isOtherSubCategory // ignore: cast_nullable_to_non_nullable
as bool,othersSubCategoryName: freezed == othersSubCategoryName ? _self.othersSubCategoryName : othersSubCategoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
