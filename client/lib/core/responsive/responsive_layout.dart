import 'package:flutter/cupertino.dart';
import 'responsive_helper.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget? desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.getDeviceType == DeviceType.desktop) {
      return desktop ?? tablet;
    } else if (ResponsiveHelper.getDeviceType == DeviceType.tablet) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
