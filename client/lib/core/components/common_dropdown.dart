import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/themes/app_dowpdown_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils/dimens.dart';
import '../utils/sizedBox.dart';

class CustomDropDown<T> extends StatelessWidget {
  final String? Function(T?)? validator;
  final String? heading;
  final TextStyle? headingStyle;
  final String? hintText;
  final SingleSelectController<T>? controller;
  final List<T>? items;
  final T? initialData;
  final dynamic Function(T?)? onChanged;
  final String? prefixIcon;
  final T? header;
  final double? radius;
  final bool? isRequired;
  final Key? dropdownKey;
  final String Function(T)? labelExtractor;
  const CustomDropDown({
    super.key,
    this.heading,
    this.headingStyle,
    this.hintText,
    this.items,
    this.validator,
    this.controller,
    this.onChanged,
    this.header,
    this.prefixIcon,
    this.initialData,
    this.radius,
    this.isRequired,
    this.dropdownKey,
    this.labelExtractor,
  });

  @override
  Widget build(BuildContext context) {
    final dropdownDecoration = AppDropdownTheme.from(
      colorScheme: context.colorScheme,
      textTheme: context.textTheme,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (heading != null) ...[
          Text(
            "$heading ${isRequired == true ? '*' : ''}",
            style: headingStyle ?? context.textTheme.titleSmall,
          ),
          SizeBox.sizeHX2,
        ],
        CustomDropdown<T>(
          key: dropdownKey,
          overlayHeight: Dimens.screenHeight / 3,
          controller: controller,
          initialItem: initialData,
          hintText: hintText,
          items: items,
          headerBuilder: (_, value, _) {
            final text = _getLabel(value);
            return Text(
              text,
              style: context.textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            );
          },
          listItemBuilder: (_, value, _, _) {
            final text = labelExtractor != null
                ? labelExtractor!(value)
                : value.toString();
            return Text(text, style: context.textTheme.bodyMedium);
          },
          itemsListPadding: EdgeInsets.symmetric(
            horizontal: Dimens.horPaddingX5,
          ),
          closedHeaderPadding: EdgeInsets.symmetric(
            horizontal: Dimens.allPaddingX3,
            vertical: Dimens.allPaddingX4,
          ),
          listItemPadding: EdgeInsets.only(bottom: Dimens.allPaddingX5),
          expandedHeaderPadding: EdgeInsets.symmetric(
            horizontal: Dimens.allPaddingX5,
            vertical: Dimens.allPaddingX3B,
          ),

          decoration: dropdownDecoration,
          onChanged: onChanged,
          validator: validator,
        ),
      ],
    );
  }

  String _getLabel(T value) {
    return labelExtractor?.call(value) ?? value.toString();
  }
}
