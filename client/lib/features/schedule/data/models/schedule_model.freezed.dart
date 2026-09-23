// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleModel {

@JsonKey(name: 'id') String get id; String get clientId; int get meetingDuration; WorkingHoursModel get workingHours; List<String> get weekOff; List<DayOffModel> get dayOff; List<CustomDayModel> get customDay; List<BreakModel> get breaks; DateTime get startDateUTC; DateTime get endDateUTC;
/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleModelCopyWith<ScheduleModel> get copyWith => _$ScheduleModelCopyWithImpl<ScheduleModel>(this as ScheduleModel, _$identity);

  /// Serializes this ScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.meetingDuration, meetingDuration) || other.meetingDuration == meetingDuration)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&const DeepCollectionEquality().equals(other.weekOff, weekOff)&&const DeepCollectionEquality().equals(other.dayOff, dayOff)&&const DeepCollectionEquality().equals(other.customDay, customDay)&&const DeepCollectionEquality().equals(other.breaks, breaks)&&(identical(other.startDateUTC, startDateUTC) || other.startDateUTC == startDateUTC)&&(identical(other.endDateUTC, endDateUTC) || other.endDateUTC == endDateUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clientId,meetingDuration,workingHours,const DeepCollectionEquality().hash(weekOff),const DeepCollectionEquality().hash(dayOff),const DeepCollectionEquality().hash(customDay),const DeepCollectionEquality().hash(breaks),startDateUTC,endDateUTC);

@override
String toString() {
  return 'ScheduleModel(id: $id, clientId: $clientId, meetingDuration: $meetingDuration, workingHours: $workingHours, weekOff: $weekOff, dayOff: $dayOff, customDay: $customDay, breaks: $breaks, startDateUTC: $startDateUTC, endDateUTC: $endDateUTC)';
}


}

/// @nodoc
abstract mixin class $ScheduleModelCopyWith<$Res>  {
  factory $ScheduleModelCopyWith(ScheduleModel value, $Res Function(ScheduleModel) _then) = _$ScheduleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id, String clientId, int meetingDuration, WorkingHoursModel workingHours, List<String> weekOff, List<DayOffModel> dayOff, List<CustomDayModel> customDay, List<BreakModel> breaks, DateTime startDateUTC, DateTime endDateUTC
});


$WorkingHoursModelCopyWith<$Res> get workingHours;

}
/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._self, this._then);

  final ScheduleModel _self;
  final $Res Function(ScheduleModel) _then;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? clientId = null,Object? meetingDuration = null,Object? workingHours = null,Object? weekOff = null,Object? dayOff = null,Object? customDay = null,Object? breaks = null,Object? startDateUTC = null,Object? endDateUTC = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,meetingDuration: null == meetingDuration ? _self.meetingDuration : meetingDuration // ignore: cast_nullable_to_non_nullable
as int,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHoursModel,weekOff: null == weekOff ? _self.weekOff : weekOff // ignore: cast_nullable_to_non_nullable
as List<String>,dayOff: null == dayOff ? _self.dayOff : dayOff // ignore: cast_nullable_to_non_nullable
as List<DayOffModel>,customDay: null == customDay ? _self.customDay : customDay // ignore: cast_nullable_to_non_nullable
as List<CustomDayModel>,breaks: null == breaks ? _self.breaks : breaks // ignore: cast_nullable_to_non_nullable
as List<BreakModel>,startDateUTC: null == startDateUTC ? _self.startDateUTC : startDateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,endDateUTC: null == endDateUTC ? _self.endDateUTC : endDateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHoursModelCopyWith<$Res> get workingHours {
  
  return $WorkingHoursModelCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScheduleModel].
extension ScheduleModelPatterns on ScheduleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id,  String clientId,  int meetingDuration,  WorkingHoursModel workingHours,  List<String> weekOff,  List<DayOffModel> dayOff,  List<CustomDayModel> customDay,  List<BreakModel> breaks,  DateTime startDateUTC,  DateTime endDateUTC)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that.id,_that.clientId,_that.meetingDuration,_that.workingHours,_that.weekOff,_that.dayOff,_that.customDay,_that.breaks,_that.startDateUTC,_that.endDateUTC);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id,  String clientId,  int meetingDuration,  WorkingHoursModel workingHours,  List<String> weekOff,  List<DayOffModel> dayOff,  List<CustomDayModel> customDay,  List<BreakModel> breaks,  DateTime startDateUTC,  DateTime endDateUTC)  $default,) {final _that = this;
switch (_that) {
case _ScheduleModel():
return $default(_that.id,_that.clientId,_that.meetingDuration,_that.workingHours,_that.weekOff,_that.dayOff,_that.customDay,_that.breaks,_that.startDateUTC,_that.endDateUTC);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id,  String clientId,  int meetingDuration,  WorkingHoursModel workingHours,  List<String> weekOff,  List<DayOffModel> dayOff,  List<CustomDayModel> customDay,  List<BreakModel> breaks,  DateTime startDateUTC,  DateTime endDateUTC)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that.id,_that.clientId,_that.meetingDuration,_that.workingHours,_that.weekOff,_that.dayOff,_that.customDay,_that.breaks,_that.startDateUTC,_that.endDateUTC);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleModel extends ScheduleModel {
  const _ScheduleModel({@JsonKey(name: 'id') required this.id, required this.clientId, required this.meetingDuration, required this.workingHours, required final  List<String> weekOff, required final  List<DayOffModel> dayOff, required final  List<CustomDayModel> customDay, required final  List<BreakModel> breaks, required this.startDateUTC, required this.endDateUTC}): _weekOff = weekOff,_dayOff = dayOff,_customDay = customDay,_breaks = breaks,super._();
  factory _ScheduleModel.fromJson(Map<String, dynamic> json) => _$ScheduleModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override final  String clientId;
@override final  int meetingDuration;
@override final  WorkingHoursModel workingHours;
 final  List<String> _weekOff;
@override List<String> get weekOff {
  if (_weekOff is EqualUnmodifiableListView) return _weekOff;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekOff);
}

 final  List<DayOffModel> _dayOff;
@override List<DayOffModel> get dayOff {
  if (_dayOff is EqualUnmodifiableListView) return _dayOff;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dayOff);
}

 final  List<CustomDayModel> _customDay;
@override List<CustomDayModel> get customDay {
  if (_customDay is EqualUnmodifiableListView) return _customDay;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customDay);
}

 final  List<BreakModel> _breaks;
@override List<BreakModel> get breaks {
  if (_breaks is EqualUnmodifiableListView) return _breaks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_breaks);
}

@override final  DateTime startDateUTC;
@override final  DateTime endDateUTC;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleModelCopyWith<_ScheduleModel> get copyWith => __$ScheduleModelCopyWithImpl<_ScheduleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.meetingDuration, meetingDuration) || other.meetingDuration == meetingDuration)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&const DeepCollectionEquality().equals(other._weekOff, _weekOff)&&const DeepCollectionEquality().equals(other._dayOff, _dayOff)&&const DeepCollectionEquality().equals(other._customDay, _customDay)&&const DeepCollectionEquality().equals(other._breaks, _breaks)&&(identical(other.startDateUTC, startDateUTC) || other.startDateUTC == startDateUTC)&&(identical(other.endDateUTC, endDateUTC) || other.endDateUTC == endDateUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clientId,meetingDuration,workingHours,const DeepCollectionEquality().hash(_weekOff),const DeepCollectionEquality().hash(_dayOff),const DeepCollectionEquality().hash(_customDay),const DeepCollectionEquality().hash(_breaks),startDateUTC,endDateUTC);

@override
String toString() {
  return 'ScheduleModel(id: $id, clientId: $clientId, meetingDuration: $meetingDuration, workingHours: $workingHours, weekOff: $weekOff, dayOff: $dayOff, customDay: $customDay, breaks: $breaks, startDateUTC: $startDateUTC, endDateUTC: $endDateUTC)';
}


}

/// @nodoc
abstract mixin class _$ScheduleModelCopyWith<$Res> implements $ScheduleModelCopyWith<$Res> {
  factory _$ScheduleModelCopyWith(_ScheduleModel value, $Res Function(_ScheduleModel) _then) = __$ScheduleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id, String clientId, int meetingDuration, WorkingHoursModel workingHours, List<String> weekOff, List<DayOffModel> dayOff, List<CustomDayModel> customDay, List<BreakModel> breaks, DateTime startDateUTC, DateTime endDateUTC
});


@override $WorkingHoursModelCopyWith<$Res> get workingHours;

}
/// @nodoc
class __$ScheduleModelCopyWithImpl<$Res>
    implements _$ScheduleModelCopyWith<$Res> {
  __$ScheduleModelCopyWithImpl(this._self, this._then);

  final _ScheduleModel _self;
  final $Res Function(_ScheduleModel) _then;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? clientId = null,Object? meetingDuration = null,Object? workingHours = null,Object? weekOff = null,Object? dayOff = null,Object? customDay = null,Object? breaks = null,Object? startDateUTC = null,Object? endDateUTC = null,}) {
  return _then(_ScheduleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,meetingDuration: null == meetingDuration ? _self.meetingDuration : meetingDuration // ignore: cast_nullable_to_non_nullable
as int,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHoursModel,weekOff: null == weekOff ? _self._weekOff : weekOff // ignore: cast_nullable_to_non_nullable
as List<String>,dayOff: null == dayOff ? _self._dayOff : dayOff // ignore: cast_nullable_to_non_nullable
as List<DayOffModel>,customDay: null == customDay ? _self._customDay : customDay // ignore: cast_nullable_to_non_nullable
as List<CustomDayModel>,breaks: null == breaks ? _self._breaks : breaks // ignore: cast_nullable_to_non_nullable
as List<BreakModel>,startDateUTC: null == startDateUTC ? _self.startDateUTC : startDateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,endDateUTC: null == endDateUTC ? _self.endDateUTC : endDateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHoursModelCopyWith<$Res> get workingHours {
  
  return $WorkingHoursModelCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// @nodoc
mixin _$WorkingHoursModel {

 String get startUTC; String get endUTC;
/// Create a copy of WorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingHoursModelCopyWith<WorkingHoursModel> get copyWith => _$WorkingHoursModelCopyWithImpl<WorkingHoursModel>(this as WorkingHoursModel, _$identity);

  /// Serializes this WorkingHoursModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingHoursModel&&(identical(other.startUTC, startUTC) || other.startUTC == startUTC)&&(identical(other.endUTC, endUTC) || other.endUTC == endUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startUTC,endUTC);

@override
String toString() {
  return 'WorkingHoursModel(startUTC: $startUTC, endUTC: $endUTC)';
}


}

/// @nodoc
abstract mixin class $WorkingHoursModelCopyWith<$Res>  {
  factory $WorkingHoursModelCopyWith(WorkingHoursModel value, $Res Function(WorkingHoursModel) _then) = _$WorkingHoursModelCopyWithImpl;
@useResult
$Res call({
 String startUTC, String endUTC
});




}
/// @nodoc
class _$WorkingHoursModelCopyWithImpl<$Res>
    implements $WorkingHoursModelCopyWith<$Res> {
  _$WorkingHoursModelCopyWithImpl(this._self, this._then);

  final WorkingHoursModel _self;
  final $Res Function(WorkingHoursModel) _then;

/// Create a copy of WorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startUTC = null,Object? endUTC = null,}) {
  return _then(_self.copyWith(
startUTC: null == startUTC ? _self.startUTC : startUTC // ignore: cast_nullable_to_non_nullable
as String,endUTC: null == endUTC ? _self.endUTC : endUTC // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingHoursModel].
extension WorkingHoursModelPatterns on WorkingHoursModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingHoursModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingHoursModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingHoursModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkingHoursModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingHoursModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingHoursModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String startUTC,  String endUTC)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingHoursModel() when $default != null:
return $default(_that.startUTC,_that.endUTC);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String startUTC,  String endUTC)  $default,) {final _that = this;
switch (_that) {
case _WorkingHoursModel():
return $default(_that.startUTC,_that.endUTC);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String startUTC,  String endUTC)?  $default,) {final _that = this;
switch (_that) {
case _WorkingHoursModel() when $default != null:
return $default(_that.startUTC,_that.endUTC);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingHoursModel extends WorkingHoursModel {
  const _WorkingHoursModel({required this.startUTC, required this.endUTC}): super._();
  factory _WorkingHoursModel.fromJson(Map<String, dynamic> json) => _$WorkingHoursModelFromJson(json);

@override final  String startUTC;
@override final  String endUTC;

/// Create a copy of WorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingHoursModelCopyWith<_WorkingHoursModel> get copyWith => __$WorkingHoursModelCopyWithImpl<_WorkingHoursModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingHoursModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingHoursModel&&(identical(other.startUTC, startUTC) || other.startUTC == startUTC)&&(identical(other.endUTC, endUTC) || other.endUTC == endUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startUTC,endUTC);

@override
String toString() {
  return 'WorkingHoursModel(startUTC: $startUTC, endUTC: $endUTC)';
}


}

/// @nodoc
abstract mixin class _$WorkingHoursModelCopyWith<$Res> implements $WorkingHoursModelCopyWith<$Res> {
  factory _$WorkingHoursModelCopyWith(_WorkingHoursModel value, $Res Function(_WorkingHoursModel) _then) = __$WorkingHoursModelCopyWithImpl;
@override @useResult
$Res call({
 String startUTC, String endUTC
});




}
/// @nodoc
class __$WorkingHoursModelCopyWithImpl<$Res>
    implements _$WorkingHoursModelCopyWith<$Res> {
  __$WorkingHoursModelCopyWithImpl(this._self, this._then);

  final _WorkingHoursModel _self;
  final $Res Function(_WorkingHoursModel) _then;

/// Create a copy of WorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startUTC = null,Object? endUTC = null,}) {
  return _then(_WorkingHoursModel(
startUTC: null == startUTC ? _self.startUTC : startUTC // ignore: cast_nullable_to_non_nullable
as String,endUTC: null == endUTC ? _self.endUTC : endUTC // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DayOffModel {

 String get reason; DateTime get dateUTC;
/// Create a copy of DayOffModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayOffModelCopyWith<DayOffModel> get copyWith => _$DayOffModelCopyWithImpl<DayOffModel>(this as DayOffModel, _$identity);

  /// Serializes this DayOffModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayOffModel&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.dateUTC, dateUTC) || other.dateUTC == dateUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,dateUTC);

@override
String toString() {
  return 'DayOffModel(reason: $reason, dateUTC: $dateUTC)';
}


}

/// @nodoc
abstract mixin class $DayOffModelCopyWith<$Res>  {
  factory $DayOffModelCopyWith(DayOffModel value, $Res Function(DayOffModel) _then) = _$DayOffModelCopyWithImpl;
@useResult
$Res call({
 String reason, DateTime dateUTC
});




}
/// @nodoc
class _$DayOffModelCopyWithImpl<$Res>
    implements $DayOffModelCopyWith<$Res> {
  _$DayOffModelCopyWithImpl(this._self, this._then);

  final DayOffModel _self;
  final $Res Function(DayOffModel) _then;

/// Create a copy of DayOffModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,Object? dateUTC = null,}) {
  return _then(_self.copyWith(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,dateUTC: null == dateUTC ? _self.dateUTC : dateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DayOffModel].
extension DayOffModelPatterns on DayOffModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayOffModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayOffModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayOffModel value)  $default,){
final _that = this;
switch (_that) {
case _DayOffModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayOffModel value)?  $default,){
final _that = this;
switch (_that) {
case _DayOffModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reason,  DateTime dateUTC)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayOffModel() when $default != null:
return $default(_that.reason,_that.dateUTC);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reason,  DateTime dateUTC)  $default,) {final _that = this;
switch (_that) {
case _DayOffModel():
return $default(_that.reason,_that.dateUTC);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reason,  DateTime dateUTC)?  $default,) {final _that = this;
switch (_that) {
case _DayOffModel() when $default != null:
return $default(_that.reason,_that.dateUTC);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayOffModel extends DayOffModel {
  const _DayOffModel({required this.reason, required this.dateUTC}): super._();
  factory _DayOffModel.fromJson(Map<String, dynamic> json) => _$DayOffModelFromJson(json);

@override final  String reason;
@override final  DateTime dateUTC;

/// Create a copy of DayOffModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayOffModelCopyWith<_DayOffModel> get copyWith => __$DayOffModelCopyWithImpl<_DayOffModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayOffModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayOffModel&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.dateUTC, dateUTC) || other.dateUTC == dateUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,dateUTC);

@override
String toString() {
  return 'DayOffModel(reason: $reason, dateUTC: $dateUTC)';
}


}

/// @nodoc
abstract mixin class _$DayOffModelCopyWith<$Res> implements $DayOffModelCopyWith<$Res> {
  factory _$DayOffModelCopyWith(_DayOffModel value, $Res Function(_DayOffModel) _then) = __$DayOffModelCopyWithImpl;
@override @useResult
$Res call({
 String reason, DateTime dateUTC
});




}
/// @nodoc
class __$DayOffModelCopyWithImpl<$Res>
    implements _$DayOffModelCopyWith<$Res> {
  __$DayOffModelCopyWithImpl(this._self, this._then);

  final _DayOffModel _self;
  final $Res Function(_DayOffModel) _then;

/// Create a copy of DayOffModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? dateUTC = null,}) {
  return _then(_DayOffModel(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,dateUTC: null == dateUTC ? _self.dateUTC : dateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CustomDayModel {

 WorkingHoursModel get workingHours; List<BreakModel> get breaks; DateTime get dateUTC;
/// Create a copy of CustomDayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomDayModelCopyWith<CustomDayModel> get copyWith => _$CustomDayModelCopyWithImpl<CustomDayModel>(this as CustomDayModel, _$identity);

  /// Serializes this CustomDayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomDayModel&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&const DeepCollectionEquality().equals(other.breaks, breaks)&&(identical(other.dateUTC, dateUTC) || other.dateUTC == dateUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workingHours,const DeepCollectionEquality().hash(breaks),dateUTC);

@override
String toString() {
  return 'CustomDayModel(workingHours: $workingHours, breaks: $breaks, dateUTC: $dateUTC)';
}


}

/// @nodoc
abstract mixin class $CustomDayModelCopyWith<$Res>  {
  factory $CustomDayModelCopyWith(CustomDayModel value, $Res Function(CustomDayModel) _then) = _$CustomDayModelCopyWithImpl;
@useResult
$Res call({
 WorkingHoursModel workingHours, List<BreakModel> breaks, DateTime dateUTC
});


$WorkingHoursModelCopyWith<$Res> get workingHours;

}
/// @nodoc
class _$CustomDayModelCopyWithImpl<$Res>
    implements $CustomDayModelCopyWith<$Res> {
  _$CustomDayModelCopyWithImpl(this._self, this._then);

  final CustomDayModel _self;
  final $Res Function(CustomDayModel) _then;

/// Create a copy of CustomDayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workingHours = null,Object? breaks = null,Object? dateUTC = null,}) {
  return _then(_self.copyWith(
workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHoursModel,breaks: null == breaks ? _self.breaks : breaks // ignore: cast_nullable_to_non_nullable
as List<BreakModel>,dateUTC: null == dateUTC ? _self.dateUTC : dateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of CustomDayModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHoursModelCopyWith<$Res> get workingHours {
  
  return $WorkingHoursModelCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomDayModel].
extension CustomDayModelPatterns on CustomDayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomDayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomDayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomDayModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomDayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomDayModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomDayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkingHoursModel workingHours,  List<BreakModel> breaks,  DateTime dateUTC)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomDayModel() when $default != null:
return $default(_that.workingHours,_that.breaks,_that.dateUTC);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkingHoursModel workingHours,  List<BreakModel> breaks,  DateTime dateUTC)  $default,) {final _that = this;
switch (_that) {
case _CustomDayModel():
return $default(_that.workingHours,_that.breaks,_that.dateUTC);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkingHoursModel workingHours,  List<BreakModel> breaks,  DateTime dateUTC)?  $default,) {final _that = this;
switch (_that) {
case _CustomDayModel() when $default != null:
return $default(_that.workingHours,_that.breaks,_that.dateUTC);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomDayModel extends CustomDayModel {
  const _CustomDayModel({required this.workingHours, required final  List<BreakModel> breaks, required this.dateUTC}): _breaks = breaks,super._();
  factory _CustomDayModel.fromJson(Map<String, dynamic> json) => _$CustomDayModelFromJson(json);

@override final  WorkingHoursModel workingHours;
 final  List<BreakModel> _breaks;
@override List<BreakModel> get breaks {
  if (_breaks is EqualUnmodifiableListView) return _breaks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_breaks);
}

@override final  DateTime dateUTC;

/// Create a copy of CustomDayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomDayModelCopyWith<_CustomDayModel> get copyWith => __$CustomDayModelCopyWithImpl<_CustomDayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomDayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomDayModel&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&const DeepCollectionEquality().equals(other._breaks, _breaks)&&(identical(other.dateUTC, dateUTC) || other.dateUTC == dateUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workingHours,const DeepCollectionEquality().hash(_breaks),dateUTC);

@override
String toString() {
  return 'CustomDayModel(workingHours: $workingHours, breaks: $breaks, dateUTC: $dateUTC)';
}


}

/// @nodoc
abstract mixin class _$CustomDayModelCopyWith<$Res> implements $CustomDayModelCopyWith<$Res> {
  factory _$CustomDayModelCopyWith(_CustomDayModel value, $Res Function(_CustomDayModel) _then) = __$CustomDayModelCopyWithImpl;
@override @useResult
$Res call({
 WorkingHoursModel workingHours, List<BreakModel> breaks, DateTime dateUTC
});


@override $WorkingHoursModelCopyWith<$Res> get workingHours;

}
/// @nodoc
class __$CustomDayModelCopyWithImpl<$Res>
    implements _$CustomDayModelCopyWith<$Res> {
  __$CustomDayModelCopyWithImpl(this._self, this._then);

  final _CustomDayModel _self;
  final $Res Function(_CustomDayModel) _then;

/// Create a copy of CustomDayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workingHours = null,Object? breaks = null,Object? dateUTC = null,}) {
  return _then(_CustomDayModel(
workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as WorkingHoursModel,breaks: null == breaks ? _self._breaks : breaks // ignore: cast_nullable_to_non_nullable
as List<BreakModel>,dateUTC: null == dateUTC ? _self.dateUTC : dateUTC // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of CustomDayModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkingHoursModelCopyWith<$Res> get workingHours {
  
  return $WorkingHoursModelCopyWith<$Res>(_self.workingHours, (value) {
    return _then(_self.copyWith(workingHours: value));
  });
}
}


/// @nodoc
mixin _$BreakModel {

 BreakTimeModel get time; String get reason;
/// Create a copy of BreakModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BreakModelCopyWith<BreakModel> get copyWith => _$BreakModelCopyWithImpl<BreakModel>(this as BreakModel, _$identity);

  /// Serializes this BreakModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BreakModel&&(identical(other.time, time) || other.time == time)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,reason);

@override
String toString() {
  return 'BreakModel(time: $time, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $BreakModelCopyWith<$Res>  {
  factory $BreakModelCopyWith(BreakModel value, $Res Function(BreakModel) _then) = _$BreakModelCopyWithImpl;
@useResult
$Res call({
 BreakTimeModel time, String reason
});


$BreakTimeModelCopyWith<$Res> get time;

}
/// @nodoc
class _$BreakModelCopyWithImpl<$Res>
    implements $BreakModelCopyWith<$Res> {
  _$BreakModelCopyWithImpl(this._self, this._then);

  final BreakModel _self;
  final $Res Function(BreakModel) _then;

/// Create a copy of BreakModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? reason = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as BreakTimeModel,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of BreakModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BreakTimeModelCopyWith<$Res> get time {
  
  return $BreakTimeModelCopyWith<$Res>(_self.time, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}


/// Adds pattern-matching-related methods to [BreakModel].
extension BreakModelPatterns on BreakModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BreakModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BreakModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BreakModel value)  $default,){
final _that = this;
switch (_that) {
case _BreakModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BreakModel value)?  $default,){
final _that = this;
switch (_that) {
case _BreakModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BreakTimeModel time,  String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BreakModel() when $default != null:
return $default(_that.time,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BreakTimeModel time,  String reason)  $default,) {final _that = this;
switch (_that) {
case _BreakModel():
return $default(_that.time,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BreakTimeModel time,  String reason)?  $default,) {final _that = this;
switch (_that) {
case _BreakModel() when $default != null:
return $default(_that.time,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BreakModel extends BreakModel {
  const _BreakModel({required this.time, required this.reason}): super._();
  factory _BreakModel.fromJson(Map<String, dynamic> json) => _$BreakModelFromJson(json);

@override final  BreakTimeModel time;
@override final  String reason;

/// Create a copy of BreakModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BreakModelCopyWith<_BreakModel> get copyWith => __$BreakModelCopyWithImpl<_BreakModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BreakModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BreakModel&&(identical(other.time, time) || other.time == time)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,reason);

@override
String toString() {
  return 'BreakModel(time: $time, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$BreakModelCopyWith<$Res> implements $BreakModelCopyWith<$Res> {
  factory _$BreakModelCopyWith(_BreakModel value, $Res Function(_BreakModel) _then) = __$BreakModelCopyWithImpl;
@override @useResult
$Res call({
 BreakTimeModel time, String reason
});


@override $BreakTimeModelCopyWith<$Res> get time;

}
/// @nodoc
class __$BreakModelCopyWithImpl<$Res>
    implements _$BreakModelCopyWith<$Res> {
  __$BreakModelCopyWithImpl(this._self, this._then);

  final _BreakModel _self;
  final $Res Function(_BreakModel) _then;

/// Create a copy of BreakModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? reason = null,}) {
  return _then(_BreakModel(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as BreakTimeModel,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of BreakModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BreakTimeModelCopyWith<$Res> get time {
  
  return $BreakTimeModelCopyWith<$Res>(_self.time, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}


/// @nodoc
mixin _$BreakTimeModel {

 String get startUTC; String get endUTC;
/// Create a copy of BreakTimeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BreakTimeModelCopyWith<BreakTimeModel> get copyWith => _$BreakTimeModelCopyWithImpl<BreakTimeModel>(this as BreakTimeModel, _$identity);

  /// Serializes this BreakTimeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BreakTimeModel&&(identical(other.startUTC, startUTC) || other.startUTC == startUTC)&&(identical(other.endUTC, endUTC) || other.endUTC == endUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startUTC,endUTC);

@override
String toString() {
  return 'BreakTimeModel(startUTC: $startUTC, endUTC: $endUTC)';
}


}

/// @nodoc
abstract mixin class $BreakTimeModelCopyWith<$Res>  {
  factory $BreakTimeModelCopyWith(BreakTimeModel value, $Res Function(BreakTimeModel) _then) = _$BreakTimeModelCopyWithImpl;
@useResult
$Res call({
 String startUTC, String endUTC
});




}
/// @nodoc
class _$BreakTimeModelCopyWithImpl<$Res>
    implements $BreakTimeModelCopyWith<$Res> {
  _$BreakTimeModelCopyWithImpl(this._self, this._then);

  final BreakTimeModel _self;
  final $Res Function(BreakTimeModel) _then;

/// Create a copy of BreakTimeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startUTC = null,Object? endUTC = null,}) {
  return _then(_self.copyWith(
startUTC: null == startUTC ? _self.startUTC : startUTC // ignore: cast_nullable_to_non_nullable
as String,endUTC: null == endUTC ? _self.endUTC : endUTC // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BreakTimeModel].
extension BreakTimeModelPatterns on BreakTimeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BreakTimeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BreakTimeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BreakTimeModel value)  $default,){
final _that = this;
switch (_that) {
case _BreakTimeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BreakTimeModel value)?  $default,){
final _that = this;
switch (_that) {
case _BreakTimeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String startUTC,  String endUTC)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BreakTimeModel() when $default != null:
return $default(_that.startUTC,_that.endUTC);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String startUTC,  String endUTC)  $default,) {final _that = this;
switch (_that) {
case _BreakTimeModel():
return $default(_that.startUTC,_that.endUTC);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String startUTC,  String endUTC)?  $default,) {final _that = this;
switch (_that) {
case _BreakTimeModel() when $default != null:
return $default(_that.startUTC,_that.endUTC);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BreakTimeModel extends BreakTimeModel {
  const _BreakTimeModel({required this.startUTC, required this.endUTC}): super._();
  factory _BreakTimeModel.fromJson(Map<String, dynamic> json) => _$BreakTimeModelFromJson(json);

@override final  String startUTC;
@override final  String endUTC;

/// Create a copy of BreakTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BreakTimeModelCopyWith<_BreakTimeModel> get copyWith => __$BreakTimeModelCopyWithImpl<_BreakTimeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BreakTimeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BreakTimeModel&&(identical(other.startUTC, startUTC) || other.startUTC == startUTC)&&(identical(other.endUTC, endUTC) || other.endUTC == endUTC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startUTC,endUTC);

@override
String toString() {
  return 'BreakTimeModel(startUTC: $startUTC, endUTC: $endUTC)';
}


}

/// @nodoc
abstract mixin class _$BreakTimeModelCopyWith<$Res> implements $BreakTimeModelCopyWith<$Res> {
  factory _$BreakTimeModelCopyWith(_BreakTimeModel value, $Res Function(_BreakTimeModel) _then) = __$BreakTimeModelCopyWithImpl;
@override @useResult
$Res call({
 String startUTC, String endUTC
});




}
/// @nodoc
class __$BreakTimeModelCopyWithImpl<$Res>
    implements _$BreakTimeModelCopyWith<$Res> {
  __$BreakTimeModelCopyWithImpl(this._self, this._then);

  final _BreakTimeModel _self;
  final $Res Function(_BreakTimeModel) _then;

/// Create a copy of BreakTimeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startUTC = null,Object? endUTC = null,}) {
  return _then(_BreakTimeModel(
startUTC: null == startUTC ? _self.startUTC : startUTC // ignore: cast_nullable_to_non_nullable
as String,endUTC: null == endUTC ? _self.endUTC : endUTC // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
