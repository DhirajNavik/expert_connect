class CustomerParam {
  final String fullName;
  final String email;
  final String phone;
  final String password;
  final String confirmPassword;

  const CustomerParam({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": fullName,
      "email": email,
      "phone": phone,
      "password": password,
      "confirmPassword": confirmPassword,
    };
  }
}
