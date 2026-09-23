import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:flutter/material.dart';
import '../utils/date_time_utils.dart';

part 'weeks_widget.dart';
part 'days_widget.dart';

class CalendarContent extends StatelessWidget {
  const CalendarContent({
    super.key,
    required this.date,
    this.selectedStartDate,
    this.selectedEndDate,
    this.onStartDateSelected,
    this.onEndDateSelected,
    this.singleSelectionMode = false,
    this.blockedDates,
    this.disableSelection,
    this.onBlockedSelected,
    this.isBlockSelectionMode,
  });

  final DateTime date;
  final DateTime? selectedStartDate;
  final DateTime? selectedEndDate;
  final void Function(DateTime)? onStartDateSelected;
  final void Function(DateTime?)? onEndDateSelected;
  final bool singleSelectionMode;
  final List<DateTime>? blockedDates;
  final bool Function(DateTime)? disableSelection;
  final  VoidCallback? onBlockedSelected;
  final bool? isBlockSelectionMode;

  @override
  Widget build(BuildContext context) {
    final dates = date.getDaysOfMonth;
    final weeks = dates.chunkDates(7);

    return Column(
      children: [
        WeeksWidget(),
        ...weeks.map((week) {
          return Row(
            children: week.map((date) {
              return DaysWidget(
                date: date,
                yearMonth: this.date,
                selectedStartDate: selectedStartDate,
                selectedEndDate: selectedEndDate,
                onStartDateSelected: onStartDateSelected,
                onEndDateSelected: onEndDateSelected,
                singleSelectionMode: singleSelectionMode,
                blockedDates: blockedDates,
                disableSelection: disableSelection,
                onBlockedSelected: onBlockedSelected,
                isBlockSelectionMode: isBlockSelectionMode,
              );
            }).toList(),
          );
        }),
      ],
    );
  }
}
