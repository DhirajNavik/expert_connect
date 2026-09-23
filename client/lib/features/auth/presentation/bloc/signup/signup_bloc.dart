import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:client/config/secure/secure_storage.dart';
import 'package:client/features/auth/domain/params/customer_param.dart';
import 'package:client/features/auth/domain/params/expert_param.dart';
import 'package:client/features/auth/domain/usecases/customer_usecase.dart';
import 'package:client/features/auth/domain/usecases/expert_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final CustomerUsecase _customerUsecase;
  final ExpertUsecase _expertUsecase;
  SignupBloc({required this._customerUsecase, required this._expertUsecase})
    : super(SignupState.initial()) {
    on<RegisterCustomer>(_onCustomerSignUp, transformer: droppable());
    on<RegisterExpert>(_onExpertSignUp, transformer: droppable());
  }

  FutureOr<void> _onCustomerSignUp(
    RegisterCustomer event,
    Emitter<SignupState> emit,
  ) async {
    emit(const SignupState.loading());

    final result = await _customerUsecase(event.param);
    if (emit.isDone) return;

    await result.match(
      (failure) {
        emit(SignupState.error(failure.message));
      },
      (response) async {
        await SessionController.instance.setSession(
          SecureModel(token: response.token, role: response.role),
        );
        emit(const SignupState.authenticated());
      },
    );
  }

  FutureOr<void> _onExpertSignUp(
    RegisterExpert event,
    Emitter<SignupState> emit,
  ) async {
    emit(const SignupState.loading());

    final result = await _expertUsecase(event.param);
    if (emit.isDone) return;

    await result.match(
      (failure) {
        emit(SignupState.error(failure.message));
      },
      (response) async {
        await SessionController.instance.setSession(
          SecureModel(token: response.token, role: response.role),
        );
        emit(const SignupState.authenticated());
      },
    );
  }
}
