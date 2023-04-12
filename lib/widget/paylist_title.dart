import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_practice/style/color.dart';
import 'package:responsive_practice/widget/primary_text.dart';

class PaylistTitle extends StatelessWidget {
  const PaylistTitle(
      {Key? key, required this.lable, required this.amount, required this.icon})
      : super(key: key);
  final String lable;
  final String amount;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.standard,
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      leading: Container(
        width: 50,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SvgPicture.asset(
          icon,
          width: 20,
        ),
      ),
      title: PrimaryText(
        text: lable,
        size: 14,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const PrimaryText(
            text: "Successfully",
            size: 12,
            color: AppColor.secondary,
          ),
          PrimaryText(
            text: amount,
            fontWeight: FontWeight.w600,
            size: 16,
          )
        ],
      ),
    );
  }
}
