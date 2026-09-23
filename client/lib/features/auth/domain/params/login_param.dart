class LoginParam {
  final String identifier;
  final String password;

  const LoginParam({required this.identifier, required this.password});

  Map<String, Object?> toJson() {
    return {"email": identifier, "password": password};
  }
}
