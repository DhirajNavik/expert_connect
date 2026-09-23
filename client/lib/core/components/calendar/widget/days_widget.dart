part of 'calendar_content.dart';

class DaysWidget extends StatefulWidget {
  const DaysWidget({
    super.key,
    required this.date,
    required this.yearMonth,
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
  final DateTime yearMonth;
  final DateTime? selectedStartDate;
  final DateTime? selectedEndDate;
  final void Function(DateTime)? onStartDateSelected;
  final void Function(DateTime?)? onEndDateSelected;
  final bool singleSelectionMode;
  final bool? isBlockSelectionMode;
  final List<DateTime>? blockedDates;
  final bool Function(DateTime)? disableSelection;
  final VoidCallback? onBlockedSelected;

  @override
  State<DaysWidget> createState() => _DaysWidgetState();
}

class _DaysWidgetState extends State<DaysWidget> {
  bool get disableSelection =>
      widget.disableSelection?.call(widget.date) ?? false;

  bool get isToday => widget.date.isSameDate(DateTime.now());
  bool get isFromToday => widget.date.isFromTodayDate(DateTime.now());
  bool get isCurrentVisibleMonth => widget.date.isSameMonth(widget.yearMonth);

  bool get isStartDate => widget.date.isSameDate(widget.selectedStartDate);
  bool get isEndDate => widget.date.isSameDate(widget.selectedEndDate);
  bool get isInRange =>
      widget.date.isBetween(widget.selectedStartDate, widget.selectedEndDate);

  bool get completeSelectDate =>
      widget.selectedStartDate != null && widget.selectedEndDate != null;
  bool get isBlockedDates =>
      widget.blockedDates?.getCalendarData(widget.date) != null;
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (!isFromToday) return;
          if (widget.isBlockSelectionMode == true) {
            setState(() {
              final DateTime date = widget.date;
              if (date.isSameDate(widget.selectedStartDate)) return;
              if (date.isSameDate(widget.selectedEndDate)) return;
              if (!date.isBetween(
                widget.selectedStartDate,
                widget.selectedEndDate,
              )) {
                return;
              }
              if (widget.blockedDates?.contains(date) == true) {
                widget.blockedDates?.remove(date);
              } else {
                widget.blockedDates?.add(date);
              }
            });
            return;
          }

          if (disableSelection) return;

          // when single selection only
          if (widget.singleSelectionMode) {
            widget.onStartDateSelected?.call(widget.date);
            return;
          }

          // when range selection
          if (widget.selectedStartDate == null) {
            widget.onStartDateSelected?.call(widget.date);
            return;
          }

          if (widget.selectedEndDate == null) {
            final isBeforeStart = widget.date.isBefore(
              widget.selectedStartDate!,
            );

            if (isStartDate || isBeforeStart) {
              widget.onStartDateSelected?.call(widget.date);
              return;
            }

            widget.onEndDateSelected?.call(widget.date);
          }

          if (completeSelectDate) {
            widget.blockedDates?.clear();
            widget.onStartDateSelected?.call(widget.date);
            widget.onEndDateSelected?.call(null);
          }
        },
        child: Container(
          color: AppPalettes.transparent,
          child: AspectRatio(
            aspectRatio: 1,
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        buildIndicator(),
                        blockDates(
                          widget.blockedDates,
                          currentDate: widget.date,
                        ),
                        buildDate(textTheme),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget blockDates(
    List<DateTime>? blockedDates, {
    required DateTime currentDate,
  }) {
    if (widget.blockedDates != null &&
        widget.blockedDates?.isNotEmpty == true) {
      if (isBlockedDates) {
        return LayoutBuilder(
          builder: (context, constrain) {
            final sizeRatio = 0.9;
            final size = constrain.maxHeight * sizeRatio;

            return Container(
              height: size - 6,
              width: size - 6,
              decoration: BoxDecoration(
                color: AppPalettes.calendarBlockedLightColor,
                shape: BoxShape.circle,
              ),
            );
          },
        );
      }
    }
    return Container();
  }

  Widget buildIndicator() {
    return LayoutBuilder(
      builder: (context, constrain) {
        final backgroundColor = AppPalettes.calendarActiveLightColor;
        final sizeRatio = 0.8;
        final size = constrain.maxHeight * sizeRatio;
        final maxWidth = constrain.maxWidth;
        final maxHeight = constrain.maxHeight;
        bool isWeekStart = widget.date.weekday == DateTime.monday;
        bool isWeekEnd = widget.date.weekday == DateTime.sunday;
        return SizedBox(
          width: maxWidth,
          height: maxHeight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (completeSelectDate && isStartDate && !isWeekEnd)
                Positioned(
                  right: 0,
                  child: Container(
                    width: maxWidth / 2,
                    height: size,
                    decoration: BoxDecoration(color: backgroundColor),
                  ),
                ),

              if (isInRange)
                Container(
                  width: maxWidth,
                  height: size,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(isWeekStart ? Dimens.radius100 : 0),
                      right: Radius.circular(isWeekEnd ? Dimens.radius100 : 0),
                    ),
                  ),
                ),

              if (completeSelectDate && isEndDate)
                Positioned(
                  left: 0,
                  child: Container(
                    width: maxWidth / 2,
                    height: size,
                    decoration: BoxDecoration(color: backgroundColor),
                  ),
                ),

              if (isStartDate || isEndDate) ...[
                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: size - 6,
                  height: size - 6,
                  decoration: BoxDecoration(
                    color: AppPalettes.calendarActiveColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget buildDate(TextTheme textTheme) {
    return Opacity(
      opacity:
          (isStartDate || isEndDate || isBlockedDates) ||
              (isCurrentVisibleMonth && !disableSelection && isFromToday)
          ? 1
          : 0.3,
      child: Text(
        "${widget.date.day}",
        style: textTheme.bodyMedium?.copyWith(
          color: isStartDate || isEndDate || isBlockedDates
              ? AppPalettes.white
              : AppPalettes.black,
          fontWeight: isCurrentVisibleMonth
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      ),
    );
  }
}
