part of 'login_form_cubit.dart';

final class LoginFormState extends Equatable {
  final FocusNode emailFocus;
  final FocusNode passwordFocus;
  final bool isPasswordObscured;
  final GlobalKey<FormBuilderState> formKey;

  const LoginFormState({
    required this.emailFocus,
    required this.passwordFocus,
    required this.isPasswordObscured,
    required this.formKey,
  });

  LoginFormState copyWith({bool? isPasswordObscured}) {
    return LoginFormState(
      emailFocus: emailFocus,
      passwordFocus: passwordFocus,
      isPasswordObscured: isPasswordObscured ?? this.isPasswordObscured,
      formKey: formKey,
    );
  }

  @override
  List<Object> get props => [
    emailFocus,
    passwordFocus,
    isPasswordObscured,
    formKey,
  ];
}
