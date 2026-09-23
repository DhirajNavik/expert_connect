import 'package:client/features/auth/data/model/auth_model.dart';
import 'package:client/features/auth/domain/params/customer_param.dart';
import 'package:client/features/auth/domain/params/expert_param.dart';
import 'package:client/features/auth/domain/params/login_param.dart';

abstract interface class AuthDataSource {
  Future<AuthModel> onLogin(LoginParam param);
  Future<AuthModel> onRegisterCustomer(CustomerParam param);
  Future<AuthModel> onRegisterExpert(ExpertParam param);
}
