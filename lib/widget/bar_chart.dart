import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../config/responsive.dart';
import '../style/color.dart';

class BarChartDashBoard extends StatelessWidget {
  const BarChartDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.spaceBetween,
          gridData:
              FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
          titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                      reservedSize: 30,
                      showTitles: true,
                      getTitlesWidget: bottomTitles)),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      reservedSize: 30,
                      showTitles: true,
                      getTitlesWidget: leftTitles))),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(
                  toY: 10,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                  toY: 50,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  toY: 30,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(
                  toY: 80,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(
                  toY: 70,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(
                  toY: 20,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(
                  toY: 90,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 7, barRods: [
              BarChartRodData(
                  toY: 60,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 8, barRods: [
              BarChartRodData(
                  toY: 10,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 9, barRods: [
              BarChartRodData(
                  toY: 40,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 10, barRods: [
              BarChartRodData(
                  toY: 80,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ]),
            BarChartGroupData(x: 11, barRods: [
              BarChartRodData(
                  toY: 40,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      toY: 90, show: true, color: AppColor.barBg)),
            ])
          ]),
      swapAnimationCurve: Curves.linear,
      swapAnimationDuration: const Duration(milliseconds: 150),
    );
  }
}

Widget leftTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    fontSize: 10,
  );
  String text;
  switch (value.toInt()) {
    case 0:
      text = "JAN";
      break;
    case 1:
      text = "FEB";
      break;
    case 2:
      text = "MAR";
      break;
    case 3:
      text = "APR";
      break;
    case 4:
      text = "MAY";
      break;
    case 5:
      text = "JUN";
      break;
    case 6:
      text = "JUL";
      break;
    case 7:
      text = "AUG";
      break;
    case 8:
      text = "SEP";
      break;
    case 9:
      text = "OCT";
      break;
    case 10:
      text = "NOV";
      break;
    case 11:
      text = "DEC";
      break;
    default:
      text = "";
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: Text(
      text,
      style: style,
    ),
  );
}

Widget bottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(color: Colors.grey, fontSize: 12);
  String text;
  if (value == 0) {
    text = '0';
  } else if (value == 30) {
    text = '30k';
  } else if (value == 60) {
    text = '60k';
  } else if (value == 90) {
    text = '90k';
  } else {
    text = '';
  }
  // switch (value.toInt()) {
  //   case 0:
  //     text = '0';
  //     break;
  //   case 30:
  //     text = '30k';
  //     break;
  //   case 60:
  //     text = '60k';
  //     break;
  //   case 90:
  //     text = '90k';
  //     break;
  //   default:
  //     text = '';
  //     break;
  // }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: Text(text, style: style),
  );
}
