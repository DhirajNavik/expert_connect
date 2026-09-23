import 'package:client/core/error/exception.dart';
import 'package:client/core/error/failures.dart';
import 'package:client/features/auth/data/datasource/auth_datasource.dart';
import 'package:client/features/auth/domain/entities/auth_entity.dart';
import 'package:client/features/auth/domain/params/customer_param.dart';
import 'package:client/features/auth/domain/params/expert_param.dart';
import 'package:client/features/auth/domain/params/login_param.dart';
import 'package:client/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _dataSource;

  const AuthRepositoryImpl(this._dataSource);
  @override
  Future<Either<Failure, AuthEntity>> onlogin(LoginParam param) async {
    try {
      final result = await _dataSource.onLogin(param);
      return Right(result.toEntity());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (err) {
      return const Left(ServerFailure('Unexpected error occurred.'));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> onRegisterCustomer(
    CustomerParam param,
  ) async {
    try {
      final result = await _dataSource.onRegisterCustomer(param);
      return Right(result.toEntity());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (err) {
      return const Left(ServerFailure('Unexpected error occurred.'));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> onRegisterExpert(
    ExpertParam param,
  ) async {
    try {
      final result = await _dataSource.onRegisterExpert(param);
      return Right(result.toEntity());
    } on APIException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (err) {
      return const Left(ServerFailure('Unexpected error occurred.'));
    }
  }
}
