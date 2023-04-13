import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/cart/views/card_iteam.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        label: "Cart",
        visibility: false,
      ),
      body: CartItemCard(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: CommonButtonWidget(
          label: "CHECKOUT",
          onClick: () {
            Get.back();
          },
        ),
      ),
    );
  }
}

class BottomWidgets extends StatelessWidget {
  const BottomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          blackText("Total Amount", 18, fontWeight: FontWeight.w400),
          Text(
            "₹5252 ",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFFD80005),
              fontSize: 18,
            ),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      CommonButtonWidget(
        label: "CHECKOUT",
        onClick: () {
          Get.back();
        },
      ),
    ]);
  }
}
