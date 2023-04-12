import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_practice/config/responsive.dart';
import 'package:responsive_practice/config/size_config.dart';
import 'package:responsive_practice/style/color.dart';
import 'package:responsive_practice/widget/primary_text.dart';

class InforCard extends StatelessWidget {
  const InforCard(
      {Key? key, required this.amount, required this.icon, required this.label})
      : super(key: key);
  final String amount;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: Responsive.isDesktop(context)
              ? 200
              : SizeConfig.screenWidth! / 2 - 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColor.white),
      padding: EdgeInsets.only(
          top: 20,
          left: 20,
          bottom: 20,
          right: Responsive.isMobile(context) ? 20 : 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            width: 35,
          ),
          SizedBox(
            height: SizeConfig.blockVertical! * 2,
          ),
          PrimaryText(
            text: label,
            size: 16,
            color: AppColor.secondary,
          ),
          SizedBox(
            height: SizeConfig.blockVertical! * 2,
          ),
          PrimaryText(
            text: amount,
            size: 18,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
