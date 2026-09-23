import 'package:client/core/dio/network_requester.dart';
import 'package:client/core/utils/app_url.dart';
import 'package:client/features/auth/data/datasource/auth_datasource.dart';
import 'package:client/features/auth/data/model/auth_model.dart';
import 'package:client/features/auth/domain/params/customer_param.dart';
import 'package:client/features/auth/domain/params/expert_param.dart';
import 'package:client/features/auth/domain/params/login_param.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthDataSource)
class AuthRemote implements AuthDataSource {
  final NetworkRequester _network;

  const AuthRemote(this._network);

  @override
  Future<AuthModel> onLogin(LoginParam param) async {
    final response = await _network.post(AppUrl.login, data: param.toJson());
    return AuthModel.fromJson(response);
  }

  @override
  Future<AuthModel> onRegisterCustomer(CustomerParam param) async {
    final response = await _network.post(
      AppUrl.createCustomer,
      data: param.toJson(),
    );
    return AuthModel.fromJson(response);
  }

  @override
  Future<AuthModel> onRegisterExpert(ExpertParam param) async {
    final response = await _network.post(
      AppUrl.createExpert,
      data: param.toJson(),
    );
    return AuthModel.fromJson(response);
  }
}
