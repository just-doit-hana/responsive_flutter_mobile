import 'package:flutter/material.dart';
import 'package:responsive_practice/config/size_config.dart';
import 'package:responsive_practice/widget/drawer_btn.dart';

class AppAction extends StatelessWidget {
  const AppAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DrawerBtn(onPressed: () {}, iconPath: "assets/calendar.svg"),
        SizedBox(
          width: SizeConfig.blockHorizontal! * 1,
        ),
        DrawerBtn(onPressed: () {}, iconPath: "assets/ring.svg"),
        SizedBox(
          width: SizeConfig.blockHorizontal! * 2,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
              )),
        )
      ],
    );
  }
}
