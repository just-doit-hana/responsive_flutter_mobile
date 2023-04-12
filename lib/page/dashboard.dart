import 'package:flutter/material.dart';
import 'package:responsive_practice/config/responsive.dart';
import 'package:responsive_practice/config/size_config.dart';
import 'package:responsive_practice/style/color.dart';
import 'package:responsive_practice/widget/header.dart';
import 'package:responsive_practice/widget/infor_card.dart';
import 'package:responsive_practice/widget/primary_text.dart';
import 'package:responsive_practice/widget/size_menu.dart';

import '../widget/app_action.dart';
import '../widget/bar_chart.dart';
import '../widget/history_table.dart';
import '../widget/payment_detail.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SizeMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
              actions: const [AppAction()],
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(flex: 1, child: SizeMenu()),
          Expanded(
              flex: 10,
              child: SafeArea(
                  child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(),
                    SizedBox(
                      height: SizeConfig.blockVertical! * 4,
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth,
                      child: const Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          InforCard(
                            amount: "\$2000",
                            icon: "assets/credit-card.svg",
                            label: "Transfer bank via card online",
                          ),
                          InforCard(
                            amount: "\$12",
                            icon: "assets/bank.svg",
                            label: "Transfer bank via card online",
                          ),
                          InforCard(
                            amount: "\$12",
                            icon: "assets/transfer.svg",
                            label: "Transfer bank via card online",
                          ),
                          InforCard(
                            amount: "\$12",
                            icon: "assets/invoice.svg",
                            label: "Transfer bank via card online",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockVertical! * 4,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryText(
                              text: "Balance",
                              size: 16,
                              color: AppColor.secondary,
                            ),
                            PrimaryText(
                              text: "\$1500",
                              size: 30,
                              fontWeight: FontWeight.w800,
                            )
                          ],
                        ),
                        PrimaryText(
                          text: "Past 30 days",
                          size: 16,
                          color: AppColor.secondary,
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockVertical! * 3,
                    ),
                    const SizedBox(
                      height: 180,
                      child: BarChartDashBoard(),
                    ),
                    SizedBox(
                      height: SizeConfig.blockVertical! * 4,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PrimaryText(
                          text: "History",
                          fontWeight: FontWeight.w800,
                          size: 30,
                        ),
                        PrimaryText(
                          text: "Transaction of last 6 months",
                          size: 16,
                          color: AppColor.secondary,
                        )
                      ],
                    ),
                    const HistoryTable(),
                    if (!Responsive.isDesktop(context)) const PaymentDetail(),
                  ],
                ),
              ))),
          if (Responsive.isDesktop(context))
            Expanded(
                flex: 4,
                child: SafeArea(
                    child: Container(
                  height: SizeConfig.screenHeight,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: AppColor.secondaryBg),
                  child: const SingleChildScrollView(
                    child: Column(children: [
                      AppAction(),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: PaymentDetail())
                    ]),
                  ),
                )))
        ],
      )),
    );
  }
}
