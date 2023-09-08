import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/dividers/common_dividers.dart';
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
      appBar: const CommonAppBar(
        label: "Cart",
        visibility: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.67,
              child: ListView.separated(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const CartItemCard(
                      image: 'assets/image/powder.png',
                      name: "SAMBAR POWDER",
                      code: "#6302",
                      qty: '30',
                    );
                  },
                  separatorBuilder: (c, i) {
                    return divider1();
                  }),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blackText("TOTAL QUANTITY", 18, fontWeight: FontWeight.w400),
                const Text(
                  "80 ",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFD80005),
                    fontSize: 18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
        child: CommonButtonWidget(
          label: "CHECKOUT",
          onClick: () {
            controller.checkOut();
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
          const Text(
            "₹5252 ",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFFD80005),
              fontSize: 18,
            ),
          )
        ],
      ),
      const SizedBox(
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
