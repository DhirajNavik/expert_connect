import 'package:client/core/error/failures.dart';
import 'package:client/features/auth/domain/params/customer_param.dart';
import 'package:client/features/auth/domain/params/expert_param.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/auth_entity.dart';
import '../params/login_param.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, AuthEntity>> onlogin(LoginParam param);
  Future<Either<Failure, AuthEntity>> onRegisterCustomer(CustomerParam param);
  Future<Either<Failure, AuthEntity>> onRegisterExpert(ExpertParam param);
}
