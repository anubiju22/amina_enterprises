import 'package:amina_enterprises/app/common_widgets/card/status_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderTopWidget extends StatelessWidget {
  final String no;
  final String orderNo;
  final String type;
  const OrderTopWidget(
      {super.key, required this.no, required this.orderNo, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            greyText("Order No : $no", 12),
            const SizedBox(
              height: 6,
            ),
            blackText(orderNo, 16, fontWeight: FontWeight.w600),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: redColor),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    blackText('Ordered', 12),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03),
                  child: greyText('3:49 PM', 12),
                )
              ],
            ),
          ],
        ).paddingSymmetric(vertical: 8),
        Column(
          children: [
            blackText('Order Status :', 12),
            const SizedBox(
              height: 8,
            ),
            orderButtonFunction(type),
          ],
        )
      ],
    );
  }
}
