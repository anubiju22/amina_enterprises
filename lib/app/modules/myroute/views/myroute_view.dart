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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  greyText(
                    fontWeight: FontWeight.w500,
                    "March 2023",
                    20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  svgWidget('assets/svg/location.svg'),
                  SizedBox(
                    width: 5,
                  ),
                  greyText(
                    fontWeight: FontWeight.w500,
                    "Palayam, Kozhikode",
                    18,
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
          ),
        ));
  }
}
