part of 'calendar_content.dart';

class WeeksWidget extends StatelessWidget {
  const WeeksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Row(
      children: daysOfWeek.map((days) {
        return Expanded(
          child: Text(
            days,
            textAlign: TextAlign.center,
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }
}
