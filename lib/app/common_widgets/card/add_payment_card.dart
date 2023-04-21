import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/add_payment/views/collect_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentAddCard extends StatelessWidget {
  final String orderNo;
  final String orderDate;
  final String paidAmt;
  final String orderAmt;
  final String dueDate;
  final String balance;
  final Function? onClick;
  const PaymentAddCard(
      {super.key,
      required this.orderNo,
      required this.orderDate,
      required this.paidAmt,
      required this.orderAmt,
      required this.dueDate,
      required this.balance,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 6,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [greyText('Order No: ', 12), blackText(orderNo, 12)],
              ),
              Row(
                children: [
                  greyText('Order Date: ', 12),
                  blackText(orderDate, 12)
                ],
              )
            ],
          ),
          sizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  greyText('Paid Amount: ', 12),
                  blackText(paidAmt, 12)
                ],
              ),
              Row(
                children: [
                  greyText('Order Amount: ', 12),
                  blackText(orderAmt, 12)
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      greyText('Due Date: ', 12),
                      redText(dueDate, 12)
                    ],
                  ),
                  sizedBox,
                  Row(
                    children: [
                      greyText('Balance: ', 12, fontWeight: FontWeight.w500),
                      redText(balance, 12, fontWeight: FontWeight.w500)
                    ],
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.06,
                margin: const EdgeInsets.only(right: 10),
                child: CommonButtonWidget(
                    label: 'COLLECT',
                    onClick: () {
                      Get.to(() => const CollectPaymentView());
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
