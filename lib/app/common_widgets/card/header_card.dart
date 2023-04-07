import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerHeaderCard extends StatelessWidget {
  const DrawerHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: scaffoldBgColor,
            border: Border.all(color: greyColor, width: 1)),
        child: Row(children: [
          svgWidget('assets/svg/profile_circle.svg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              blackText('Hi,', 12, fontWeight: FontWeight.w500),
              blackText('PRINCE FOOTWEAR', 12, fontWeight: FontWeight.w700),
              const SizedBox(
                height: 5,
              ),
              greyText('C-KL-000001', 12)
            ],
          ).paddingOnly(left: 7)
        ]).paddingSymmetric(horizontal: 10, vertical: 10),
      ),
    );
  }
}
