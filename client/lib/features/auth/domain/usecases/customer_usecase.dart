import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/auth/domain/entities/auth_entity.dart';
import 'package:client/features/auth/domain/params/customer_param.dart';
import 'package:client/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class CustomerUsecase implements UseCase<AuthEntity, CustomerParam> {
  final AuthRepository _repository;
  const CustomerUsecase(this._repository);

  @override
  Future<Either<Failure, AuthEntity>> call(CustomerParam params) {
    return _repository.onRegisterCustomer(params);
  }
}
