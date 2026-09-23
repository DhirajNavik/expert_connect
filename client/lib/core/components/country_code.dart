import 'package:client/config/injector/injectable.dart';
import 'package:client/config/routes/route_exports.dart';
import 'package:client/core/components/custom_modal_sheet.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/extension/padding_extension.dart';
import 'package:client/core/models/country_code_model.dart';
import 'package:client/core/utils/app_countries.dart';
import 'package:client/core/utils/dimens.dart';

class CountryCodeWidget extends StatelessWidget {
  final CountryCode selected;
  final void Function(CountryCode code) onChanged;

  const CountryCodeWidget({
    super.key,
    required this.onChanged,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showCountryPicker(
        context,
        selected: selected,
        onSelected: onChanged,
      ),
      child: Row(
        mainAxisSize: .min,
        spacing: Dimens.gapX1,
        children: [
          Text(selected.flag, style: TextStyle(fontSize: Dimens.scaleX2B)),
          Icon(Icons.arrow_drop_down, size: Dimens.scaleX3),
        ],
      ).onlyPadding(left: Dimens.horPaddingX4),
    );
  }
}

void _showCountryPicker(
  BuildContext context, {
  CountryCode? selected,
  void Function(CountryCode code)? onSelected,
}) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) {
      return CustomModalSheetWidget(
        showClose: true,
        size: 0.4,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: countryCodes.length,
          itemBuilder: (_, index) {
            final country = countryCodes[index];
            return ListTile(
              contentPadding: .symmetric(horizontal: Dimens.horizontalspacing),
              leading: Text(
                country.flag,
                style: context.textTheme.headlineMedium,
              ),
              title: Text(country.name),
              trailing: Text(country.dialCode),
              selected: selected?.code == country.code,
              onTap: () {
                onSelected?.call(country);
                serviceLocator<GoRouter>().pop();
              },
            );
          },
        ),
      );
    },
  );
}
