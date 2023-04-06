import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/shop_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shops_controller.dart';

class ShopsView extends GetView<ShopsController> {
  const ShopsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBgColor,
        appBar: CommonAppBar(label: 'Shops'),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            itemCount: 4,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext, context) {
              return ShopCard(
                // visible: true,
                shopname: "PRINCE FOOTWEAR BANDBAHAL",
                location: "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                number: "9856254147",
              );
            }));
  }
}
