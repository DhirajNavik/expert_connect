import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../extension/context_extension.dart';
import '../utils/dimens.dart';

class CustomTextForm extends StatelessWidget {
  final bool? showCursor;

  final TextStyle? textStyle;
  final TextStyle? labelStyle;

  final int? maxLines;
  final int? maxLength;
  final bool isPassword;
  final bool? isRequired;
  final bool enabled;
  final String? Function(String?)? validator;
  final FocusNode? focus;
  final FocusNode? nextFocus;
  final Widget? prefixIcon;
  final void Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final Function()? onTap;
  final String? labelText;
  final String? hintText;
  final bool? alignLabel;
  final EdgeInsetsGeometry? contentPadding;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final String name;
  final Widget? suffixIcon;
  const CustomTextForm({
    super.key,
    this.onTap,
    this.textStyle,
    this.showCursor = true,
    this.maxLength,
    this.labelText,
    this.hintText,
    this.maxLines = 1,
    this.prefixIcon,
    this.alignLabel = false,
    this.keyboardType = TextInputType.emailAddress,
    this.isPassword = false,
    this.focus,
    this.enabled = true,
    this.nextFocus,
    this.onChanged,
    this.validator,
    this.initialValue,
    this.isRequired,
    required this.name,
    this.contentPadding,
    this.inputFormatters,
    this.suffixIcon,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: Dimens.gapX2,
      children: [
        if (labelText != null) ...[
          FittedBox(
            child: Text(
              "$labelText ${isRequired == true ? '*' : ''}",
              style: labelStyle ?? context.textTheme.titleSmall,
            ),
          ),
        ],
        FormBuilderTextField(
          name: name,
          initialValue: initialValue,
          onChanged: onChanged,
          keyboardType: keyboardType,
          obscureText: isPassword,
          maxLines: maxLines,
          maxLength: maxLength,
          validator: validator,
          inputFormatters: inputFormatters,
          showCursor: showCursor,
          cursorHeight: Dimens.allPaddingX5,
          onTap: onTap,
          style: textStyle ?? context.textTheme.titleSmall,
          onSubmitted: (submitValue) {
            FocusScope.of(context).requestFocus(nextFocus);
          },
          enabled: enabled,
          focusNode: focus,
          decoration: InputDecoration(
            counterText: "",
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
