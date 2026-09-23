part of 'signup_bloc.dart';

@freezed
sealed class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;
  const factory SignupState.authenticated() = _Authenticated;
  const factory SignupState.error(String? message) = _Error;
}
