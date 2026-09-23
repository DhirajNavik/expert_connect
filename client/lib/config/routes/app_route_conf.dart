import 'package:client/config/secure/secure_storage.dart';
import 'package:client/features/home/presentation/pages/customer_home_view.dart';
import 'package:client/features/home/presentation/pages/expert_home_view.dart';
import 'package:client/features/stepper_profile/presentation/view/profile_stepper_view.dart';
import 'package:client/flavors.dart';
import 'package:injectable/injectable.dart';
import 'route_exports.dart';

part 'common_route.dart';
part 'customer_route.dart';
part 'expert_route.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription _subscription;

  GoRouterRefreshStream(Stream stream) {
    _subscription = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

@module
abstract class AppRouteModule {
  @singleton
  GoRouter get router => _router;

  final _router = GoRouter(
    navigatorKey: AppRouteConf.rootNavigatorKey,
    initialLocation: AppRoute.login.path,
    refreshListenable: GoRouterRefreshStream(SessionController.instance.stream),
    routes: [
      ...CommonRoutes.routes,
      if (Flavor.role == UserRole.customer) ...CustomerRoutes.routes,

      if (Flavor.role == UserRole.expert) ...ExpertRoutes.routes,
    ],
    // errorPageBuilder: (_, _) => MaterialPage(child: ErrorView()),
    redirect: (context, state) {
      final session = SessionController.instance.current;
      final isAuthenticated = session?.token != null;
      final location = state.matchedLocation;
      final isPublicRoute = {
        AppRoute.login.path,
        AppRoute.signup.path,
      }.contains(location);

      if (!isAuthenticated) {
        if (isPublicRoute) {
          return null;
        }
        return AppRoute.login.path;
      }

      if (session?.role != Flavor.role) {
        SessionController.instance.clearSession();
        return AppRoute.login.path;
      }

      if (isPublicRoute) {
        return AppRoute.initialPage.path;
      }

      return null;
    },
  );
}

class AppRouteConf {
  AppRouteConf._();

  static final rootNavigatorKey = GlobalKey<NavigatorState>();
}
