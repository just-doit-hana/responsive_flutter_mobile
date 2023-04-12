import 'package:flutter/material.dart';
import 'package:responsive_practice/config/size_config.dart';
import 'package:responsive_practice/data/data.dart';
import 'package:responsive_practice/style/color.dart';
import 'package:responsive_practice/widget/paylist_title.dart';
import 'package:responsive_practice/widget/primary_text.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockVertical! * 4,
        ),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 15,
                    offset: const Offset(10, 15))
              ]),
          child: Image.asset("assets/card.png"),
        ),
        SizedBox(
          height: SizeConfig.blockVertical! * 4,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: "Recent Activities",
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: "18 March 2023",
              size: 14,
              color: AppColor.secondary,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockVertical! * 2,
        ),
        Column(
          children: List.generate(
              recentActivities.length,
              (index) => PaylistTitle(
                  lable: recentActivities[index]["label"]!,
                  amount: recentActivities[index]["amount"]!,
                  icon: recentActivities[index]["icon"]!)),
        ),
        SizedBox(
          height: SizeConfig.blockVertical! * 2,
        ),
        Column(
          children: List.generate(
              upcomingPayments.length,
              (index) => PaylistTitle(
                  lable: upcomingPayments[index]["label"]!,
                  amount: upcomingPayments[index]["amount"]!,
                  icon: upcomingPayments[index]["icon"]!)),
        ),
      ],
    );
  }
}
