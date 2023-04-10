import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class OrderDetailsWidget extends StatelessWidget {
  final String type;
  final String artNo;
  final String artType;
  final String mrp;
  const OrderDetailsWidget(
      {super.key,
      required this.type,
      required this.artNo,
      required this.artType,
      required this.mrp});

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
            const SizedBox(
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                orderType(type),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    blackText(artNo, 18, fontWeight: FontWeight.w500),
                    Text(
                      mrp,
                      style: const TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                greyText(artType, 12),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(children: [
                    Column(
                      children: [greyText('Packing', 10), orderQty('7 * 10')],
                    ),
                    const VerticalDivider(
                      thickness: 1,
                      endIndent: 10,
                      color: Color(0xFFCAC4C4),
                    ),
                    Column(
                      children: [greyText('Order quantity', 10), orderQty('1')],
                    ),
                    const VerticalDivider(
                      thickness: 1,
                      endIndent: 10,
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
      child: blackText("ORDER TYPE : $label", 10),
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
