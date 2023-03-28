import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/my_route_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/myroute_controller.dart';

class MyrouteView extends GetView<MyrouteController> {
  const MyrouteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(label: "My Route"),
        backgroundColor: scaffoldBgColor,
        body: Column(
          children: [
            Row(
              children: [
                Text("March 2023"),
              ],
            ),
            Row(
              children: [
                svgWidget('assets/svg/location.svg'),
                SizedBox(
                  width: 5,
                ),
                GreyText(
                  text: "Palayam, Kozhikode",
                )
              ],
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext, context) {
                  return Column(
                    children: [
                      Divider(
                        thickness: 2,
                      ),
                      MyRouteCard(
                        shopname: "PRINCE FOOTWEAR BANDBAHAL",
                        location:
                            "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                        number: "9856254147",
                      ),
                    ],
                  );
                }),
            Divider(
              thickness: 2,
            ),
          ],
        ));
  }
}
