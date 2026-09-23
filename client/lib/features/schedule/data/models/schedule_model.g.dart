// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) =>
    _ScheduleModel(
      id: json['id'] as String,
      clientId: json['clientId'] as String,
      meetingDuration: (json['meetingDuration'] as num).toInt(),
      workingHours: WorkingHoursModel.fromJson(
        json['workingHours'] as Map<String, dynamic>,
      ),
      weekOff: (json['weekOff'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dayOff: (json['dayOff'] as List<dynamic>)
          .map((e) => DayOffModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      customDay: (json['customDay'] as List<dynamic>)
          .map((e) => CustomDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      breaks: (json['breaks'] as List<dynamic>)
          .map((e) => BreakModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDateUTC: DateTime.parse(json['startDateUTC'] as String),
      endDateUTC: DateTime.parse(json['endDateUTC'] as String),
    );

Map<String, dynamic> _$ScheduleModelToJson(_ScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientId': instance.clientId,
      'meetingDuration': instance.meetingDuration,
      'workingHours': instance.workingHours,
      'weekOff': instance.weekOff,
      'dayOff': instance.dayOff,
      'customDay': instance.customDay,
      'breaks': instance.breaks,
      'startDateUTC': instance.startDateUTC.toIso8601String(),
      'endDateUTC': instance.endDateUTC.toIso8601String(),
    };

_WorkingHoursModel _$WorkingHoursModelFromJson(Map<String, dynamic> json) =>
    _WorkingHoursModel(
      startUTC: json['startUTC'] as String,
      endUTC: json['endUTC'] as String,
    );

Map<String, dynamic> _$WorkingHoursModelToJson(_WorkingHoursModel instance) =>
    <String, dynamic>{'startUTC': instance.startUTC, 'endUTC': instance.endUTC};

_DayOffModel _$DayOffModelFromJson(Map<String, dynamic> json) => _DayOffModel(
  reason: json['reason'] as String,
  dateUTC: DateTime.parse(json['dateUTC'] as String),
);

Map<String, dynamic> _$DayOffModelToJson(_DayOffModel instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'dateUTC': instance.dateUTC.toIso8601String(),
    };

_CustomDayModel _$CustomDayModelFromJson(Map<String, dynamic> json) =>
    _CustomDayModel(
      workingHours: WorkingHoursModel.fromJson(
        json['workingHours'] as Map<String, dynamic>,
      ),
      breaks: (json['breaks'] as List<dynamic>)
          .map((e) => BreakModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateUTC: DateTime.parse(json['dateUTC'] as String),
    );

Map<String, dynamic> _$CustomDayModelToJson(_CustomDayModel instance) =>
    <String, dynamic>{
      'workingHours': instance.workingHours,
      'breaks': instance.breaks,
      'dateUTC': instance.dateUTC.toIso8601String(),
    };

_BreakModel _$BreakModelFromJson(Map<String, dynamic> json) => _BreakModel(
  time: BreakTimeModel.fromJson(json['time'] as Map<String, dynamic>),
  reason: json['reason'] as String,
);

Map<String, dynamic> _$BreakModelToJson(_BreakModel instance) =>
    <String, dynamic>{'time': instance.time, 'reason': instance.reason};

_BreakTimeModel _$BreakTimeModelFromJson(Map<String, dynamic> json) =>
    _BreakTimeModel(
      startUTC: json['startUTC'] as String,
      endUTC: json['endUTC'] as String,
    );

Map<String, dynamic> _$BreakTimeModelToJson(_BreakTimeModel instance) =>
    <String, dynamic>{'startUTC': instance.startUTC, 'endUTC': instance.endUTC};
