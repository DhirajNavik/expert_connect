import 'package:bloc/bloc.dart';
import 'package:client/core/models/country_code_model.dart';
import 'package:client/core/utils/app_countries.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';

part 'signup_form_state.dart';

@injectable
class SignupFormCubit extends Cubit<SignupFormState> {
  SignupFormCubit()
    : super(
        SignupFormState(
          nameFocus: FocusNode(),
          emailFocus: FocusNode(),
          phoneFocus: FocusNode(),
          passwordFocus: FocusNode(),
          confirmPasswordFocus: FocusNode(),
          formKey: GlobalKey<FormBuilderState>(),
          code: "+91",
        ),
      );

  CountryCode searchCountryCode(String code) {
    return countryCodes.firstWhere((v) => v.dialCode == code);
  }

  void switchCountryCode(String? code) {
    emit(state.copyWith(code: code));
  }

  void togglePassword() {
    emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }

  void toggleConfirmPassword() {
    emit(
      state.copyWith(
        isConfirmPasswordObscured: !state.isConfirmPasswordObscured,
      ),
    );
  }

  bool validateLogin() {
    return state.formKey.currentState?.saveAndValidate() ?? false;
  }

  Map<String, dynamic> get values => state.formKey.currentState!.value;

  @override
  Future<void> close() {
    state.emailFocus.dispose();
    state.nameFocus.dispose();
    state.phoneFocus.dispose();
    state.passwordFocus.dispose();
    state.confirmPasswordFocus.dispose();
    return super.close();
  }
}
