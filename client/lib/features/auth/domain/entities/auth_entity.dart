import 'package:client/flavors.dart';
import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String token;
  final UserRole role;

  const AuthEntity({required this.token, required this.role});

  @override
  List<Object?> get props => [token, role];
}
