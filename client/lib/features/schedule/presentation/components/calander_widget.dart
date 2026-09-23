import "package:client/core/components/calendar/widget/calendar_content.dart";
import "package:client/core/components/calendar/widget/calendar_header.dart";
import "package:client/core/components/custom_button.dart";
import "package:client/core/extension/context_extension.dart";
import "package:client/core/extension/padding_extension.dart";
import "package:client/core/helpers/decoration.dart";
import "package:client/core/utils/dimens.dart";
import "package:client/core/utils/sizedBox.dart";
import "package:client/features/schedule/presentation/cubit/calendar_cubit.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class CalanderWidget extends StatelessWidget {
  final CalendarCubit bloc;

  final DateTime? selectedStartDate;
  final DateTime? selectedEndDate;

  final void Function(DateTime)? onStartDateSelected;
  final void Function(DateTime?)? onEndDateSelected;

  final List<DateTime>? blockedDates;

  final bool Function(DateTime)? disableSelection;
  const CalanderWidget({
    super.key,
    required this.bloc,
    this.selectedStartDate,
    this.selectedEndDate,
    this.onStartDateSelected,
    this.onEndDateSelected,
    this.blockedDates,
    this.disableSelection,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final localization = context.localizations;
    return Column(
      spacing: Dimens.gapX3,
      children: [
        Container(
          decoration: boxDecorationRoundedWithShadow(
            context,
            radius: Dimens.radiusX4,
            blurRadius: 2,
          ),
          padding: .all(Dimens.radiusX4),
          child: BlocBuilder<CalendarCubit, CalendarState>(
            bloc: bloc,
            builder: (context, state) {
              return Column(
                children: [
                  CalendarHeader(
                    date: state.date,
                    onPreviousMonth: bloc.switchPreviousMonth,
                    onNextMonth: bloc.switchNextMonth,
                  ),
                  SizeBox.sizeHX3,
                  CalendarContent(
                    date: state.date,
                    selectedStartDate: selectedStartDate,
                    selectedEndDate: selectedEndDate,
                    onStartDateSelected: onStartDateSelected,
                    onEndDateSelected: onEndDateSelected,
                    blockedDates: blockedDates,
                    disableSelection: disableSelection,
                    isBlockSelectionMode: state.isBlockedSelected,
                    onBlockedSelected: bloc.toggleBlockedSelection,
                  ),
                  SizeBox.sizeHX2,
                  CustomButton(
                    text: state.isBlockedSelected
                        ? localization.cancel
                        : localization.add_block_dates,
                    onPressed: bloc.toggleBlockedSelection,
                  ),
                ],
              );
            },
          ),
        ),
        Row(
          spacing: Dimens.gapX2,
          children: [
            buildStatusButton(
              color: Colors.red,
              text: 'Blocked',
              textTheme: textTheme,
            ),
            buildStatusButton(
              color: Colors.green,
              text: 'Active Days',
              textTheme: textTheme,
            ),
          ],
        ).horizontalPadding(Dimens.horPaddingX4),
      ],
    );
  }
}

Widget buildStatusButton({
  required Color color,
  required String text,
  required TextTheme textTheme,
}) {
  return Row(
    spacing: Dimens.gapX1,
    children: [
      Container(
        width: Dimens.scaleX2,
        height: Dimens.scaleX2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: .circular(Dimens.radiusX1),
        ),
      ),
      Text(
        text,
        style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
      ),
    ],
  );
}
