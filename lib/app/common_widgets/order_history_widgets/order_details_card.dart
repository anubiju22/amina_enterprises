import 'package:amina_enterprises/app/common_widgets/texts/login_text.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class OrderDetailsWidget extends StatelessWidget {
  final String name, qty;
  final String code;

  const OrderDetailsWidget({
    super.key,
    required this.name,
    required this.code,
    required this.qty,
  });

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 5,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        blackText('Order Details', 16, fontWeight: FontWeight.w600),
        // const SizedBox(
        //   height: 20,
        // ),
        sizedBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/image/powder.png',
              height: 86,
              width: 66,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackText(name, 14, fontWeight: FontWeight.w600),
                  sizedBox,
                  greyText(code, 12),
                  SizedBox(
                    height: 15,
                  ),
                  blackText('Qty: ${qty}', 12, fontWeight: FontWeight.w600),
                ],
              ),
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

SizedBox divider() {
  return const SizedBox(
      width: 12,
      height: 45,
      child: VerticalDivider(thickness: 1.5, color: Color(0xFFC4C4C4)));
}

Container borderWidget(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0xFFC4C4C4), width: .5),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Text(text),
  );
}
