import 'package:client/features/schedule/domain/entities/schedule_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
abstract class ScheduleModel with _$ScheduleModel {
  const ScheduleModel._();
  const factory ScheduleModel({
    @JsonKey(name: 'id') required String id,
    required String clientId,
    required int meetingDuration,
    required WorkingHoursModel workingHours,
    required List<String> weekOff,
    required List<DayOffModel> dayOff,
    required List<CustomDayModel> customDay,
    required List<BreakModel> breaks,
    required DateTime startDateUTC,
    required DateTime endDateUTC,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);

  ScheduleEntity toEntity() {
    return ScheduleEntity(
      id: id,
      clientId: clientId,
      meetingDuration: meetingDuration,
      workingHours: workingHours.toEntity(),
      weekOff: weekOff,
      dayOff: dayOff.map((e) => e.toEntity()).toList(),
      customDay: customDay.map((e) => e.toEntity()).toList(),
      breaks: breaks.map((e) => e.toEntity()).toList(),
      startDate: startDateUTC,
      endDate: endDateUTC,
    );
  }
}

@freezed
abstract class WorkingHoursModel with _$WorkingHoursModel {
  const WorkingHoursModel._();

  const factory WorkingHoursModel({
    required String startUTC,
    required String endUTC,
  }) = _WorkingHoursModel;

  factory WorkingHoursModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingHoursModelFromJson(json);

  WorkingHoursEntity toEntity() {
    return WorkingHoursEntity(startTime: startUTC, endTime: endUTC);
  }
}

@freezed
abstract class DayOffModel with _$DayOffModel {
  const DayOffModel._();

  const factory DayOffModel({
    required String reason,
    required DateTime dateUTC,
  }) = _DayOffModel;

  factory DayOffModel.fromJson(Map<String, dynamic> json) =>
      _$DayOffModelFromJson(json);

  DayOffEntity toEntity() {
    return DayOffEntity(reason: reason, date: dateUTC);
  }
}

@freezed
abstract class CustomDayModel with _$CustomDayModel {
  const CustomDayModel._();

  const factory CustomDayModel({
    required WorkingHoursModel workingHours,
    required List<BreakModel> breaks,
    required DateTime dateUTC,
  }) = _CustomDayModel;

  factory CustomDayModel.fromJson(Map<String, dynamic> json) =>
      _$CustomDayModelFromJson(json);

  CustomDayEntity toEntity() {
    return CustomDayEntity(
      workingHours: workingHours.toEntity(),
      breaks: breaks.map((e) => e.toEntity()).toList(),
      date: dateUTC,
    );
  }
}

@freezed
abstract class BreakModel with _$BreakModel {
  const BreakModel._();

  const factory BreakModel({
    required BreakTimeModel time,
    required String reason,
  }) = _BreakModel;

  factory BreakModel.fromJson(Map<String, dynamic> json) =>
      _$BreakModelFromJson(json);

  BreakEntity toEntity() {
    return BreakEntity(time: time.toEntity(), reason: reason);
  }
}

@freezed
abstract class BreakTimeModel with _$BreakTimeModel {
  const BreakTimeModel._();

  const factory BreakTimeModel({
    required String startUTC,
    required String endUTC,
  }) = _BreakTimeModel;

  factory BreakTimeModel.fromJson(Map<String, dynamic> json) =>
      _$BreakTimeModelFromJson(json);

  BreakTimeEntity toEntity() {
    return BreakTimeEntity(startTime: startUTC, endTime: endUTC);
  }
}
