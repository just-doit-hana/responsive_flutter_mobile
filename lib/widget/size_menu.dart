import 'package:flutter/material.dart';
import 'package:responsive_practice/config/size_config.dart';
import 'package:responsive_practice/style/color.dart';

import 'drawer_btn.dart';

class SizeMenu extends StatelessWidget {
  const SizeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Drawer(
      elevation: 0,
      child: Container(
        decoration: const BoxDecoration(color: AppColor.secondaryBg),
        width: double.infinity,
        height: SizeConfig.screenHeight,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
              ),
              DrawerBtn(
                iconPath: "assets/home.svg",
                onPressed: () {},
              ),
              DrawerBtn(onPressed: () {}, iconPath: "assets/pie-chart.svg"),
              DrawerBtn(onPressed: () {}, iconPath: "assets/clipboard.svg"),
              DrawerBtn(onPressed: () {}, iconPath: "assets/credit-card.svg"),
              DrawerBtn(onPressed: () {}, iconPath: "assets/trophy.svg"),
              DrawerBtn(onPressed: () {}, iconPath: "assets/invoice.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
