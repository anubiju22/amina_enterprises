import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/add_payment_card.dart';
import 'package:amina_enterprises/app/common_widgets/card/shop_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_payment_controller.dart';

class AddPaymentView extends GetView<AddPaymentController> {
  const AddPaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(
          label: 'Add Payment',
          visibility: false,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: ShopCard(
              shopname: controller.shops,
              location: "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
              number: "9856254147",
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 2,
              //shrinkWrap: true,
              itemBuilder: (context, index) {
                return const PaymentAddCard(
                  orderDate: '12 Apr 2022',
                  orderNo: '1234567',
                  balance: '₹3000',
                  dueDate: '06 May 2022',
                  orderAmt: '₹13000',
                  paidAmt: '₹10000',
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: greyColor.withOpacity(0.2),
                  thickness: 1,
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            decoration: const BoxDecoration(color: homeMenuColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    redText('Total Balance', 19, fontWeight: FontWeight.w600),
                    redText('₹7500', 19, fontWeight: FontWeight.w600)
                  ]),
            ),
          )
        ]));
  }
}
