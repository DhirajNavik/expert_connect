import 'package:client/config/injector/injectable.dart';
import 'package:client/core/components/custom_button.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/extension/padding_extension.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/core/utils/sizedBox.dart';
import 'package:client/features/auth/domain/params/customer_param.dart';
import 'package:client/features/auth/domain/params/expert_param.dart';
import 'package:client/features/auth/presentation/bloc/signup/signup_bloc.dart';
import 'package:client/features/auth/presentation/components/signup_form.dart';
import 'package:client/features/auth/utils/login_fields.dart';
import 'package:client/features/auth/utils/signup_fields.dart';
import 'package:client/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/signup_form/signup_form_cubit.dart';

class SignupBodyWidget extends StatefulWidget {
  const SignupBodyWidget({super.key});

  @override
  State<SignupBodyWidget> createState() => _SignupBodyWidgetState();
}

class _SignupBodyWidgetState extends State<SignupBodyWidget>
    with SingleTickerProviderStateMixin {
  late final SignupBloc viewModel;
  late final SignupFormCubit formCubit;

  @override
  void initState() {
    super.initState();
    viewModel = serviceLocator<SignupBloc>();
    formCubit = serviceLocator<SignupFormCubit>();
  }

  @override
  Widget build(BuildContext context) {
    final localization = context.localizations;
    final textTheme = context.textTheme;
    return Card(
      margin: .all(Dimens.allPaddingX4),
      child: BlocListener<SignupBloc, SignupState>(
        bloc: viewModel,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            authenticated: () {
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
                Text(
                  localization.create_your_account,
                  style: textTheme.displaySmall?.copyWith(fontWeight: .w700),
                ),
                SizeBox.sizeHX2,
                SignupFormWidget(cubit: formCubit),
                SizeBox.widgetSpacing,

                BlocSelector<SignupBloc, SignupState, bool>(
                  bloc: viewModel,
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
                        if (!formCubit.validateLogin()) return;
                        final form = formCubit.values;

                        if (Flavor.role == UserRole.customer) {
                          viewModel.add(
                            SignupEvent.onRegisterCustomer(
                              CustomerParam(
                                fullName: form[SignupFields.fullName],
                                email: form[SignupFields.email],
                                phone:
                                    "${formCubit.state.code}${form[SignupFields.phone]}",
                                password: form[LoginFields.password],
                                confirmPassword:
                                    form[SignupFields.confirmPassword],
                              ),
                            ),
                          );
                        } else if (Flavor.role == UserRole.expert) {
                          viewModel.add(
                            SignupEvent.onRegisterExpert(
                              ExpertParam(
                                fullName: form[SignupFields.fullName],
                                email: form[SignupFields.email],
                                phone:
                                    "${formCubit.state.code}${form[SignupFields.phone]}",
                                password: form[LoginFields.password],
                                confirmPassword:
                                    form[SignupFields.confirmPassword],
                              ),
                            ),
                          );
                        }
                      },
                      text: localization.register,
                    );
                  },
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
    formCubit.close();
    super.dispose();
  }
}
