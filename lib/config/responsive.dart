import 'package:flutter/material.dart';

class Responsive {
  final Widget desktop;
  final Widget? tablet;
  final Widget mobile;
  final Widget? smallMobile;

  Responsive(
      {required this.desktop,
      this.tablet,
      required this.mobile,
      this.smallMobile});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTabllet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width <= 768;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width >= 1200) {
      return desktop;
    } else if (size.width < 1200 && size.width >= 768) {
      return tablet!;
    } else if (size.width >= 376 && size.width <= 768) {
      return mobile;
    } else {
      return smallMobile!;
    }
  }
}
