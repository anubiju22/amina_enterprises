import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/shop_card.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/myvisit_controller.dart';

class MyvisitView extends GetView<MyvisitController> {
  const MyvisitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: homeMenuColor,
        appBar: CommonAppBar(label: 'My Visit'),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: 3,
            itemBuilder: (BuildContext, context) {
              return ShopCard(
                visibles: true,
                shopname: "PRINCE FOOTWEAR BANDBAHAL",
                location: "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                number: "9856254147",
                time: "3:49 PM",
                timer: "0 hrs 3 mins",
              );
            }));
  }
}
