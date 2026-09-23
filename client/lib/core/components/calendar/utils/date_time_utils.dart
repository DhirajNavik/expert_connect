import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  List<DateTime> get getDaysOfMonth {
    final firstDay = DateTime(year, month, 1);
    final lastDay = DateTime(year, month + 1, 0);

    final firstMonday = firstDay.subtract(
      Duration(days: firstDay.weekday - DateTime.monday),
    );

    final lastSunday = lastDay.add(
      Duration(days: DateTime.sunday - lastDay.weekday),
    );

    return List.generate(
      lastSunday.difference(firstMonday).inDays + 1,
      (index) => firstMonday.add(Duration(days: index)),
    );
  }

  String get monthAndYear {
    final formatter = DateFormat("MMMM yyyy");
    return formatter.format(this);
  }

  bool isSameDate(DateTime? other) {
    if (other == null) return false;

    final sameYear = year == other.year;
    final sameMonth = month == other.month;
    final sameDay = day == other.day;

    return sameYear && sameMonth && sameDay;
  }

  bool isFromTodayDate(DateTime? other) {
    if (other == null) return false;
    final thisDateOnly = DateTime(year, month, day);
    final otherDateOnly = DateTime(other.year, other.month, other.day);

    return !thisDateOnly.isBefore(otherDateOnly);
  }

  bool isSameMonth(DateTime other) {
    final sameMonth = month == other.month;
    return sameMonth;
  }

  bool isBetween(DateTime? startDate, DateTime? endDate) {
    if (startDate == null || endDate == null) return false;
    return isAfterDate(startDate) && isBeforeDate(endDate);
  }

  bool isBeforeDate(DateTime? other) {
    if (other == null) return false;
    final thisDateOnly = DateTime(year, month, day);
    final otherDateOnly = DateTime(other.year, other.month, other.day);

    return thisDateOnly.isBefore(otherDateOnly);
  }

  bool isAfterDate(DateTime? other) {
    if (other == null) return false;
    final thisDateOnly = DateTime(year, month, day);
    final otherDateOnly = DateTime(other.year, other.month, other.day);

    return thisDateOnly.isAfter(otherDateOnly);
  }
}

extension ListDateTimeExtension on List<DateTime> {
  List<List<DateTime>> chunkDates(int chunkSize) {
    return [
      for (var i = 0; i < length; i += chunkSize)
        sublist(i, (i + chunkSize).clamp(0, length)),
    ];
  }

  DateTime? getCalendarData(DateTime date) {
    for (final item in this) {
      if (item.isSameDate(date)) {
        return item;
      }
    }

    return null;
  }
}

final daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
