import 'package:amina_enterprises/app/common_widgets/card/status_card.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

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
      children: [
        Column(
          children: [
            greyText("Order No : $no", 12),
            blackText(orderNo, 16, fontWeight: FontWeight.w600),
            Row(
              children: [
                Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: primaryColor),
                ),
                Column(
                  children: [blackText('Ordered', 12), greyText('3:49 PM', 12)],
                )
              ],
            )
          ],
        ),
        Center(
          child: Column(
            children: [
              blackText('Order Status :', 12),
              orderButtonFunction(type),
            ],
          ),
        )
      ],
    );
  }
}
