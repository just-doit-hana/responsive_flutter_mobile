import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_practice/style/color.dart';

class DrawerBtn extends StatelessWidget {
  const DrawerBtn({Key? key, required this.onPressed, required this.iconPath})
      : super(key: key);
  final VoidCallback onPressed;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: SvgPicture.asset(
          iconPath,
          width: 20,
          colorFilter:
              const ColorFilter.mode(AppColor.iconGray, BlendMode.srcIn),
        ),
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(vertical: 20));
  }
}
