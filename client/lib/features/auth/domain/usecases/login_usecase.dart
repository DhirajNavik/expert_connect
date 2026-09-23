import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/auth_entity.dart';
import '../params/login_param.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class LoginUseCase implements UseCase<AuthEntity, LoginParam> {
  final AuthRepository _respository;

  const LoginUseCase(this._respository);

  @override
  Future<Either<Failure, AuthEntity>> call(LoginParam param) {
    return _respository.onlogin(param);
  }
}
