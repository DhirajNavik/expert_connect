import 'package:client/core/utils/app_images.dart';

enum UserRole { customer, expert }

class Flavor {
  static late final UserRole role;

  static String get name => role.name;

  static String get title {
    switch (role) {
      case UserRole.customer:
        return 'Expert Connect';
      case UserRole.expert:
        return 'Expert Hub';
    }
  }

  static String get icon {
    return switch (role) {
      UserRole.customer => AppImages.customerForeground,
      UserRole.expert => AppImages.expertLogo,
    };
  }
}
