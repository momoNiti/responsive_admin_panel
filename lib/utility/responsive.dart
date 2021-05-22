import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop, mobile;
  final Widget? tablet;
  const Responsive({
    Key? key,
    required this.desktop,
    required this.mobile,
    this.tablet,
  }) : super(key: key);

  static const double desktopWidth = 1100;
  static const double mobileWidth = 850;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopWidth &&
      MediaQuery.of(context).size.width >= mobileWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopWidth;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= desktopWidth) {
      return desktop;
    } else if (_size.width >= mobileWidth && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
