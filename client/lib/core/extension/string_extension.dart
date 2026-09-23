extension StringExtension on String? {
  String? toCapitalize() {
    if (this?.isEmpty == true) return this;
    return "${this?[0].toUpperCase()}${this?.substring(1)}";
  }
}
