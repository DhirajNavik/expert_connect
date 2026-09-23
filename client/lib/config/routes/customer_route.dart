part of 'app_route_conf.dart';

class CustomerRoutes {
  static List<RouteBase> routes = [
    GoRoute(
      path: AppRoute.signup.path,
      name: AppRoute.signup.pathName,
      builder: (_, _) => const SignupView(),
    ),

    GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.pathName,
      builder: (_, _) => const CustomerHomeView(),
    ),
  ];
}
