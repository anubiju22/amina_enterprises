import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shops_controller.dart';

class ShopsView extends GetView<ShopsController> {
  const ShopsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 181, 171, 171),
        appBar: CommonAppBar(label: 'Shops'),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: 3,
            itemBuilder: (BuildContext, context) {
              return ShopCard();
            }));
  }
}

class ShopCard extends StatelessWidget {
  const ShopCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        height: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlackText(
                text: "PRINCE FOOTWEAR BANDBAHAL",
              ),
              Row(
                children: [
                  svgWidget('assets/svg/location.svg'),
                  SizedBox(
                    width: 5,
                  ),
                  GreyText(
                    text: "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                  )
                ],
              ),
              Row(
                children: [
                  svgWidget('assets/svg/Call.svg', size: 15),
                  SizedBox(
                    width: 5,
                  ),
                  GreyText(
                    text: "9856254147",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
