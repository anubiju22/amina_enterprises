import 'package:amina_enterprises/app/common_widgets/card/division_card.dart';
import 'package:amina_enterprises/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget getDivision(BuildContext context, String text, String selectItem) {
  return SizedBox(
      width: double.maxFinite,
      child: GetBuilder<HomeController>(builder: (c) {
        return ListView.builder(
            itemCount: c.divisionItems.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return DivisionCardWidget(
                label: c.divisionItems[index],
                selectItem: selectItem[index],
                act: () {},
              );
            });
      }));
}
