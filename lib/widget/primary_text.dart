import 'package:flutter/material.dart';
import 'package:responsive_practice/style/color.dart';

class PrimaryText extends StatelessWidget {
  const PrimaryText(
      {Key? key,
      this.size = 20.0,
      this.fontWeight = FontWeight.w400,
      this.color = AppColor.primary,
      this.height = 1.3,
      required this.text})
      : super(key: key);
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          height: height,
          color: color,
          fontWeight: fontWeight,
          fontFamily: "Poppins"),
    );
  }
}
