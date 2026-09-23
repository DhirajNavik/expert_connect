import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:client/features/auth/domain/params/login_param.dart';
import 'package:client/features/auth/domain/usecases/login_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../config/secure/secure_storage.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUsecase;
  LoginBloc({required this._loginUsecase}) : super(const LoginState.initial()) {
    on<LoginEvent>(_onLoginEvent, transformer: droppable());
  }

  FutureOr<void> _onLoginEvent(
    LoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());

    final result = await _loginUsecase(event.param);

    if (emit.isDone) return;

    await result.match(
      (failure) {
        emit(LoginState.error(failure.message));
      },
      (response) async {
        await SessionController.instance.setSession(
          SecureModel(token: response.token, role: response.role),
        );
        emit(const LoginState.authenticated());
      },
    );
  }
}
