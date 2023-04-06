import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class OrderHistoryCardWidget extends StatelessWidget {
  const OrderHistoryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              greyText('Order No : 12', 12),
              Row(
                children: [
                  svgWidget('assets/svg/calendar.svg'),
                  const SizedBox(
                    width: 2,
                  ),
                  greyText('May 27, 2023', 12)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          blackText('PAR/ENQ/026536', 16, fontWeight: FontWeight.w600),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              svgWidget('assets/svg/location.svg'),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: greyText(
                    'Crystal Building, Malad, Rathodi, Mankavu, Calicut',
                    12,
                    textOverflow: TextOverflow.ellipsis),
              )
            ],
          )
        ]),
      ),
    );
  }
}
