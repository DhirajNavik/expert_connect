part of 'signup_bloc.dart';

@freezed
abstract class SignupEvent with _$SignupEvent {
  const factory SignupEvent.onRegisterCustomer(CustomerParam param) = RegisterCustomer;
  const factory SignupEvent.onRegisterExpert(ExpertParam param) = RegisterExpert;
}
