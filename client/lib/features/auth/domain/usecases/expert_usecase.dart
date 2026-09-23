import 'package:client/core/error/failures.dart';
import 'package:client/core/usecase/usecase.dart';
import 'package:client/features/auth/domain/entities/auth_entity.dart';
import 'package:client/features/auth/domain/params/expert_param.dart';
import 'package:client/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExpertUsecase implements UseCase<AuthEntity, ExpertParam> {
  final AuthRepository _repository;

  const ExpertUsecase(this._repository);

  @override
  Future<Either<Failure, AuthEntity>> call(ExpertParam params) {
    return _repository.onRegisterExpert(params);
  }
}
