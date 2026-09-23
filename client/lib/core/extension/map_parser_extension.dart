extension MapParserExtension on Map<String, dynamic> {
  List<T> parseData<T>(T Function(Map<String, dynamic>) fromJson) {
    final data = this["data"] as List;
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }
}
