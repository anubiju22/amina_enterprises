import 'package:amina_enterprises/app/common_widgets/button/date_button.dart';
import 'package:amina_enterprises/app/common_widgets/card/view_payment_card.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/search_feild.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common_widgets/app_bar/common_app_bar.dart';
import '../controllers/paymenthistory_controller.dart';

class PaymentHistoryView extends GetView<PaymenthistoryController> {
  const PaymentHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(label: "View", visibility: false),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DateButton(
                      size: MediaQuery.of(context).size,
                      ontapp: () {},
                      label: controller.fromDate.value == ''
                          ? "From Date"
                          : controller.fromDate.value,
                      onPressed: () {
                        controller.changeFromDate(context);
                      },
                    ),
                    DateButton(
                      size: MediaQuery.of(context).size,
                      ontapp: () {},
                      label: controller.toDate.value == ''
                          ? "To Date"
                          : controller.toDate.value,
                      onPressed: () {
                        controller.changeToDate(context);
                      },
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CommonSearchTextField(
                        hintText: 'SELECT SHOP',

                        isEnabled: true,
                        autofocus: false,
                        readOnly: true,
                        // textEditingController:
                        //     shopPaymentState.selectShopController,
                        onPressed: () {},
                        onTap: () async {},
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        width: 60,
                        height: 50,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            shape: BoxShape.rectangle,
                            gradient: primaryColor),
                        child: const Icon(
                          Icons.filter_alt,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                ],
              ),
              Expanded(
                  child: ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: ((context, index) {
                  return const ViewPaymentCard(
                    amount: "  ₹ Amount: 10000",
                    amtVisible: true,
                    balance: "Balance: ₹3000",
                    date: "21 Apr 2021",
                    // dueVisible: true,
                    invamount: "Order Amount: ₹13000",
                    invdate: "Order Date: 21 Apr 2022",
                    location:
                        "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                    shop: "PRINCE FOOTWEAR BANDBAHAL",
                    visible: false,
                  );
                }),
              ))
            ],
          ),
        ));
  }
}
