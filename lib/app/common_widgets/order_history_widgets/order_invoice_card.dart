import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class OrderInvoiceDetailsWidget extends StatelessWidget {
  final String invNo;
  final String place;
  final String number;
  const OrderInvoiceDetailsWidget(
      {super.key,
      required this.invNo,
      required this.place,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        blackText('Invoice Details', 16, fontWeight: FontWeight.w600),
        const SizedBox(
          height: 15,
        ),
        greyText("Invoice No : $invNo", 12),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            svgWidget('assets/svg/location.svg'),
            greyText(place, 12),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            svgWidget('assets/svg/Call.svg', size: 15),
            greyText(number, 12),
          ],
        )
      ],
    );
  }
}
