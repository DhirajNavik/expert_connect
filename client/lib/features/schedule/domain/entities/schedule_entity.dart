class ScheduleEntity {
  final String id;
  final String clientId;
  final int meetingDuration;
  final WorkingHoursEntity workingHours;
  final List<String> weekOff;
  final List<DayOffEntity> dayOff;
  final List<CustomDayEntity> customDay;
  final List<BreakEntity> breaks;
  final DateTime startDate;
  final DateTime endDate;

  const ScheduleEntity({
    required this.id,
    required this.clientId,
    required this.meetingDuration,
    required this.workingHours,
    required this.weekOff,
    required this.dayOff,
    required this.customDay,
    required this.breaks,
    required this.startDate,
    required this.endDate,
  });
}

class WorkingHoursEntity {
  final String startTime;
  final String endTime;

  const WorkingHoursEntity({
    required this.startTime,
    required this.endTime,
  });
}

class DayOffEntity {
  final String reason;
  final DateTime date;

  const DayOffEntity({
    required this.reason,
    required this.date,
  });
}

class CustomDayEntity {
  final WorkingHoursEntity workingHours;
  final List<BreakEntity> breaks;
  final DateTime date;

  const CustomDayEntity({
    required this.workingHours,
    required this.breaks,
    required this.date,
  });
}

class BreakEntity {
  final BreakTimeEntity time;
  final String reason;

  const BreakEntity({
    required this.time,
    required this.reason,
  });
}

class BreakTimeEntity {
  final String startTime;
  final String endTime;

  const BreakTimeEntity({
    required this.startTime,
    required this.endTime,
  });
}