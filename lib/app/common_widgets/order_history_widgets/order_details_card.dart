import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class OrderDetailsWidget extends StatelessWidget {
  final String type;
  final String artNo;
  final String artType;
  const OrderDetailsWidget(
      {super.key, required this.type, required this.artNo, required this.artType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        blackText('Order Details', 16, fontWeight: FontWeight.w600),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset('assets/image/slipper.png'),
            Column(
              children: [
                orderType(type),
                blackText(artNo, 18, fontWeight: FontWeight.w500),
                greyText(artType, 12),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Row(children: [
                    Column(
                      children: [greyText('Packing', 10), orderQty('7 * 10')],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xFFCAC4C4),
                    ),
                    Column(
                      children: [greyText('Order quantity', 10), orderQty('1')],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0xFFCAC4C4),
                    ),
                    Column(
                      children: [
                        greyText('Delivered quantity', 10),
                        orderQty('1')
                      ],
                    ),
                  ]),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

Widget orderType(String label) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor, width: 1)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: greyText("ORDER TYPE : $label", 10),
    ),
  );
}

Widget orderQty(String qty) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: borderColor, width: 1)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: greyText(qty, 10),
    ),
  );
}
