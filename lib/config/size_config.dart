import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockVertical;
  static double? blockHorizontal;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
    blockVertical = screenHeight! / 100;
    blockHorizontal = screenWidth! / 100;
  }
}
