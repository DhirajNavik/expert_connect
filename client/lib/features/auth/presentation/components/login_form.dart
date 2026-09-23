import 'package:client/core/components/custom_text_field.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/extension/validation_extension.dart';
import 'package:client/core/helpers/icons_helpers.dart';
import 'package:client/core/utils/app_images.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../core/components/animation_switch.dart';
import '../../utils/login_fields.dart';
import '../cubit/login_form/login_form_cubit.dart';

class LoginFormWidget extends StatelessWidget {
  final LoginFormCubit cubit;
  final String? initialValue;
  const LoginFormWidget({
    super.key,
    required this.cubit,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    final localization = context.localizations;
    return FormBuilder(
      key: cubit.state.formKey,
      initialValue: {LoginFields.identifier: initialValue},
      autovalidateMode: AutovalidateMode.onUnfocus,
      child: Column(
        spacing: Dimens.textFromSpacing,

        children: [
          CustomTextForm(
            name: LoginFields.identifier,
            labelText: localization.email,
            hintText: localization.email_hint,
            focus: cubit.state.emailFocus,
            nextFocus: cubit.state.passwordFocus,
            keyboardType: TextInputType.emailAddress,
            validator: FormValidators.validateEmail,
          ),

          BlocSelector<LoginFormCubit, LoginFormState, bool>(
            bloc: cubit,
            selector: (state) => state.isPasswordObscured,
            builder: (_, value) {
              return CustomTextForm(
                name: LoginFields.password,
                labelText: localization.password,
                focus: cubit.state.passwordFocus,
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
        ],
      ),
    );
  }
}
