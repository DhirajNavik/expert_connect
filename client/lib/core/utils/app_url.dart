class AppUrl {
  AppUrl._();
  static String login = "/auth/login";
  static String createCustomer = "/auth/customer";
  static String createExpert = "/auth/expert";
  static String categories = "/categories/";
  static String experiences = "/experiences/";
  static String mySchedule = "/schedule/";
  static String schedule(String id) => "/schedule/$id/view";
  static String subCategories(String categoryId) =>
      "/categories/$categoryId/subcategories";

  // Maps

  static String fetchCurrentLocation(double lat, long, {required String key}) =>
      "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$long&key=$key";
}
