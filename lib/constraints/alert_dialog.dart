import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/card/division_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/home/controllers/home_controller.dart';
import 'package:amina_enterprises/app/modules/myvisit/views/myvisit_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget getDivision(BuildContext context) {
  return AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32), topRight: Radius.circular(32))),
    title: blackText('Choose Your Division', 20, fontWeight: FontWeight.bold),
    contentPadding: EdgeInsets.zero,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        child: CommonButtonWidget(
            label: 'SUBMIT',
            onClick: () {
              Get.back(result: true);
            }),
      )
    ],
    content: Stack(children: [
      Positioned(
        right: -30,
        top: -30,
        child: CircleAvatar(
          backgroundColor: Colors.red,
          maxRadius: 20.0,
          child: IconButton(
            icon: const Icon(Icons.close),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: double.maxFinite,
          child: GetBuilder<HomeController>(builder: (c) {
            return ListView.separated(
                separatorBuilder: (context, index) {
                  return divider();
                },
                itemCount: c.divisionItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return DivisionCardWidget(
                    label: c.divisionItems[index],
                    selectItem: c.selectedValue,
                    act: (value) {
                      c.onClickDivision(value);
                    },
                  );
                });
          })),
    ]),
  );
}

// class DivisionAlertDialog extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
    
//   }

// }