import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class OrderInvoiceDetailsWidget extends StatelessWidget {
  final String invNo;
  const OrderInvoiceDetailsWidget({super.key, required this.invNo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        blackText('Invoice Details', 16, fontWeight: FontWeight.w600),
        const SizedBox(
          height: 15,
        ),
        greyText("Invoice No : $invNo", 12),
        Row(
          children: [
            svgWidget('assets/svg/')
          ],
        )
      ],
    );
  }
}
