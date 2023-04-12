import 'package:flutter/material.dart';
import 'package:responsive_practice/config/responsive.dart';
import 'package:responsive_practice/style/color.dart';
import 'package:responsive_practice/widget/primary_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: "Dashboard",
              size: 30,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: "Payment Updates",
              size: 16,
              color: AppColor.secondary,
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
            flex: Responsive.isDesktop(context) ? 1 : 3,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.white,
                  contentPadding: const EdgeInsets.only(left: 40.0, right: 5.0),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: AppColor.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: AppColor.white)),
                  hintStyle:
                      const TextStyle(fontSize: 14, color: AppColor.primary),
                  hintText: "seach ",
                  prefixIcon: const Icon(Icons.search)),
            ))
      ],
    );
  }
}
