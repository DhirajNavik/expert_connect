import 'package:client/core/components/country_code.dart';
import 'package:client/core/models/country_code_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../../core/components/custom_text_field.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/validation_extension.dart';
import '../../../../core/helpers/icons_helpers.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/dimens.dart';

import '../../../../core/components/animation_switch.dart';
import '../../utils/signup_fields.dart';
import '../cubit/signup_form/signup_form_cubit.dart';

class SignupFormWidget extends StatelessWidget {
  final SignupFormCubit cubit;
  const SignupFormWidget({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final localization = context.localizations;
    return FormBuilder(
      key: cubit.state.formKey,
      // initialValue: {LoginFields.identifier: initialValue},
      autovalidateMode: AutovalidateMode.onUnfocus,
      child: Column(
        spacing: Dimens.textFromSpacing,

        children: [
          CustomTextForm(
            name: SignupFields.fullName,
            labelText: localization.name,
            hintText: localization.enter_your_name,
            focus: cubit.state.nameFocus,
            nextFocus: cubit.state.emailFocus,
            keyboardType: TextInputType.name,
            // validator: FormValidators.,
          ),
          CustomTextForm(
            name: SignupFields.email,
            labelText: localization.email,
            hintText: localization.email_hint,
            focus: cubit.state.emailFocus,
            nextFocus: cubit.state.phoneFocus,
            keyboardType: TextInputType.emailAddress,
            validator: FormValidators.validateEmail,
          ),

          BlocSelector<SignupFormCubit, SignupFormState, CountryCode>(
            bloc: cubit,
            selector: (state) {
              return cubit.searchCountryCode(state.code);
            },
            builder: (_, value) {
              return CustomTextForm(
                name: SignupFields.phone,
                labelText: localization.phone_number,
                hintText: localization.enter_your_phone_number,
                focus: cubit.state.phoneFocus,
                nextFocus: cubit.state.passwordFocus,
                maxLength: value.maxLength,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                prefixIcon: CountryCodeWidget(
                  onChanged: (selected) {
                    cubit.switchCountryCode(selected.dialCode);
                  },
                  selected: value,
                ),
                // validator: FormValidators.va,
              );
            },
          ),

          BlocSelector<SignupFormCubit, SignupFormState, bool>(
            bloc: cubit,
            selector: (state) => state.isPasswordObscured,
            builder: (_, value) {
              return CustomTextForm(
                name: SignupFields.password,
                labelText: localization.password,
                focus: cubit.state.passwordFocus,
                nextFocus: cubit.state.confirmPasswordFocus,
                keyboardType: TextInputType.text,
                hintText: localization.password_hint,
                isPassword: value,
                suffixIcon: AnimationSwitch(
                  child: SizedBox(
                    key: ValueKey(value),
                    child: IconsHelpers.eyeIcon(
                      color: context.iconsColor,
                      value ? AppImages.eyeSlashIcon : AppImages.eyeIcon,
                      onTap: () => cubit.togglePassword(),
                    ),
                  ),
                ),
                validator: FormValidators.passwordValidator(),
              );
            },
          ),

          BlocSelector<SignupFormCubit, SignupFormState, bool>(
            bloc: cubit,
            selector: (state) => state.isConfirmPasswordObscured,
            builder: (_, value) {
              return CustomTextForm(
                name: SignupFields.confirmPassword,
                labelText: localization.confirm_password,
                focus: cubit.state.confirmPasswordFocus,
                keyboardType: TextInputType.text,
                hintText: localization.enter_your_confirm_password,
                isPassword: value,
                suffixIcon: AnimationSwitch(
                  child: SizedBox(
                    key: ValueKey(value),
                    child: IconsHelpers.eyeIcon(
                      color: context.iconsColor,
                      value ? AppImages.eyeSlashIcon : AppImages.eyeIcon,
                      onTap: () => cubit.toggleConfirmPassword(),
                    ),
                  ),
                ),
                validator: FormValidators.passwordValidator(),
              );
            },
          ),
        ],
      ),
    );
  }
}
