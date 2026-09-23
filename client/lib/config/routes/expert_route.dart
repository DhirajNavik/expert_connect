part of 'app_route_conf.dart';

class ExpertRoutes {
  static List<RouteBase> routes = [
    GoRoute(
      path: AppRoute.signup.path,
      name: AppRoute.signup.pathName,
      builder: (_, _) => const SignupView(),
    ),

    GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.pathName,
      builder: (_, _) => const ExpertHomeView(),
    ),

    GoRoute(
      path: AppRoute.profileStepper.path,
      name: AppRoute.profileStepper.pathName,
      builder: (_, _) => ProfileStepperView(),
    ),

     GoRoute(
      path: AppRoute.initialPage.path,
      name: AppRoute.initialPage.pathName,
      builder: (_, _) => InitialExpertView(),
    ),
  ];
}
