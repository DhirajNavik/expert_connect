part of 'app_route_conf.dart';

class CommonRoutes {
  static List<RouteBase> routes = [
    GoRoute(
      path: AppRoute.login.path,
      name: AppRoute.login.pathName,
      builder: (_, _) => const LoginView(),
    ),
  
  ];
}
