import 'package:client/config/injector/injectable.dart';
import 'package:client/config/routes/app_route_path.dart';
import 'package:client/core/components/custom_button.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/extension/padding_extension.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/core/utils/sizedBox.dart';
import 'package:client/features/auth/domain/params/login_param.dart';
import 'package:client/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:client/features/auth/presentation/components/login_form.dart';
import 'package:client/features/auth/presentation/cubit/remember_me/remember_me_cubit.dart';
import 'package:client/features/auth/utils/login_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/login_form/login_form_cubit.dart';

class LoginBodyWidget extends StatefulWidget {
  const LoginBodyWidget({super.key});

  @override
  State<LoginBodyWidget> createState() => _LoginBodyWidgetState();
}

class _LoginBodyWidgetState extends State<LoginBodyWidget>
    with SingleTickerProviderStateMixin {
  late final LoginBloc loginViewModel;
  late final LoginFormCubit loginFormCubit;
  late final RememberMeCubit rememberMeCubit;

  @override
  void initState() {
    super.initState();
    loginViewModel = serviceLocator<LoginBloc>();
    loginFormCubit = serviceLocator<LoginFormCubit>();
    rememberMeCubit = serviceLocator<RememberMeCubit>();
  }

  @override
  Widget build(BuildContext context) {
    final localization = context.localizations;
    final textTheme = context.textTheme;
    return Card(
      margin: .all(Dimens.allPaddingX4),
      child: BlocListener<LoginBloc, LoginState>(
        bloc: loginViewModel,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            authenticated: () {
              rememberMeCubit.saveIdentifier(
                loginFormCubit.values[LoginFields.identifier] as String,
              );
            },
            error: (message) {
              // CommonSnackbar(text: message).showToast();
            },
          );
        },
        child:
            Column(
              mainAxisSize: .min,
              crossAxisAlignment: .start,
              children: [
                Column(
                  spacing: Dimens.gapX,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      localization.welcome_back,
                      style: textTheme.displaySmall?.copyWith(
                        fontWeight: .w700,
                      ),
                    ),
                    Text(
                      localization.enter_your_details_please,
                      style: textTheme.bodyMedium?.copyWith(fontWeight: .w500),
                    ),
                  ],
                ),
                SizeBox.widgetSpacing,
                LoginFormWidget(
                  cubit: loginFormCubit,
                  initialValue: rememberMeCubit.state.identifier,
                ),

                SizeBox.sizeHX2,
                BlocSelector<RememberMeCubit, RememberMeState, bool>(
                  bloc: rememberMeCubit,
                  selector: (state) {
                    return state.isRemember;
                  },
                  builder: (context, value) {
                    return Row(
                      children: [
                        Checkbox(
                          value: value,
                          materialTapTargetSize: .shrinkWrap,
                          onChanged: (v) => rememberMeCubit.toggleRememberMe(v),
                        ),
                        Text(
                          localization.remember_me,
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    );
                  },
                ),
                SizeBox.sizeHX2,
                BlocSelector<LoginBloc, LoginState, bool>(
                  bloc: loginViewModel,
                  selector: (state) {
                    return state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                  },
                  builder: (context, state) {
                    return CustomButton(
                      isLoading: state,
                      onPressed: () async {
                        if (!loginFormCubit.validateLogin()) return;
                        final form = loginFormCubit.values;
                        loginViewModel.add(
                          LoginEvent.onLogin(
                            LoginParam(
                              identifier: form[LoginFields.identifier],
                              password: form[LoginFields.password],
                            ),
                          ),
                        );
                      },
                      text: "Login",
                    );
                  },
                ),
                SizeBox.widgetSpacing,
                InkWell(
                  onTap: () =>
                      serviceLocator<GoRouter>().push(AppRoute.signup.path),
                  child: Align(
                    heightFactor: 1.4,
                    alignment: .center,
                    child: FittedBox(
                      fit: .scaleDown,
                      child: RichText(
                        textAlign: .center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: localization.dont_have_an_account,
                              style: textTheme.bodyLarge,
                            ),
                            WidgetSpan(child: SizeBox.sizeWX),
                            TextSpan(
                              text: localization.create_one,
                              style: textTheme.bodyLarge?.copyWith(
                                color: context.colorScheme.secondary,
                                fontWeight: .w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ).symmetricPadding(
              horizontal: Dimens.horizontalspacing,
              vertical: Dimens.verticalspacing,
            ),
      ),
    );
  }

  @override
  void dispose() {
    loginViewModel.close();
    loginFormCubit.close();
    rememberMeCubit.close();
    super.dispose();
  }
}
