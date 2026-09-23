import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';

part 'login_form_state.dart';

@injectable
class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit()
    : super(
        LoginFormState(
          emailFocus: FocusNode(),
          passwordFocus: FocusNode(),
          isPasswordObscured: true,
          formKey: GlobalKey<FormBuilderState>(),
        ),
      );

  void togglePassword() {
    emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }

  bool validateLogin() {
    return state.formKey.currentState?.saveAndValidate() ?? false;
  }

  Map<String, dynamic> get values => state.formKey.currentState!.value;

  @override
  Future<void> close() {
    state.emailFocus.dispose();
    state.passwordFocus.dispose();
    return super.close();
  }
}
