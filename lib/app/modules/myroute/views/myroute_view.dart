import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/my_route_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/myroute/views/calender.dart';
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: HorizontalCalendar(),
              ),
              // Row(
              //   children: [
              //     Container(
              //       height: 100,
              //       width: 50,
              //       child: SingleChildScrollView(
              //         scrollDirection: Axis.vertical,
              //         child: HorizontalCalendar(
              //           date: DateTime.now(),
              //           initialDate:
              //               DateTime.now().subtract(Duration(days: 30)),
              //           showMonth: true,

              //           //  firstDate: DateTime.now().subtract(Duration(days: 30)),
              //           lastDate: DateTime.now().add(Duration(days: 30)),
              //           // selectedDateTime: DateTime.now(),
              //           onDateSelected: (date) => print(date),
              //           textColor: Colors.black45,
              //           backgroundColor: Colors.transparent,
              //           selectedColor: Colors.blue,

              //           // baseColor: Colors.grey.shade300,
              //           // You can add more properties here as needed
              //         ),
              //       ),
              //     )
              //   ],
              // ),
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
