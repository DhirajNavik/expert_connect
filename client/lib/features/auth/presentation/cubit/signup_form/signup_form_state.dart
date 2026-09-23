part of 'signup_form_cubit.dart';

final class SignupFormState extends Equatable {
  final FocusNode nameFocus;
  final FocusNode emailFocus;
  final FocusNode phoneFocus;
  final FocusNode passwordFocus;
  final bool isPasswordObscured;
  final FocusNode confirmPasswordFocus;
  final bool isConfirmPasswordObscured;
  final GlobalKey<FormBuilderState> formKey;
  final String code;

  const SignupFormState({
    required this.nameFocus,
    required this.emailFocus,
    required this.phoneFocus,
    required this.passwordFocus,
    required this.confirmPasswordFocus,
    this.isPasswordObscured = true,
    this.isConfirmPasswordObscured = true,
    required this.formKey,
    required this.code,
  });

  SignupFormState copyWith({
    bool? isPasswordObscured,
    bool? isConfirmPasswordObscured,
    String? code,
  }) {
    return SignupFormState(
      nameFocus: nameFocus,
      emailFocus: emailFocus,
      phoneFocus: phoneFocus,
      passwordFocus: passwordFocus,
      confirmPasswordFocus: confirmPasswordFocus,
      isConfirmPasswordObscured:
          isConfirmPasswordObscured ?? this.isConfirmPasswordObscured,
      isPasswordObscured: isPasswordObscured ?? this.isPasswordObscured,
      formKey: formKey,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [
    nameFocus,
    emailFocus,
    phoneFocus,
    passwordFocus,
    isPasswordObscured,
    confirmPasswordFocus,
    isConfirmPasswordObscured,
    formKey,
    code,
  ];
}
