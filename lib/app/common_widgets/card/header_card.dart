import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class DrawerHeaderCard extends StatelessWidget {
  const DrawerHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: greyColor, width: 1)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.10,
          height: MediaQuery.of(context).size.height * 0.10,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xFFE7E7E7)),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/image/profile_mask.png')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            blackText('Hi,', 12, fontWeight: FontWeight.w500),
            blackText('PRINCE FOOTWEAR', 12, fontWeight: FontWeight.w700),
            greyText('C-KL-0001', 12)
          ],
        )
      ]),
    );
  }
}
