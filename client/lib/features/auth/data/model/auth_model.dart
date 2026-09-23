import 'package:client/features/auth/domain/entities/auth_entity.dart';
import 'package:client/flavors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
abstract class AuthModel with _$AuthModel {
  const AuthModel._();

  const factory AuthModel({required String token, required UserRole role}) =
      _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  AuthEntity toEntity() => AuthEntity(token: token, role: role);
}
