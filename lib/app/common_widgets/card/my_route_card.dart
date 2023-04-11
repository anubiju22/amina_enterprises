import 'package:amina_enterprises/app/common_widgets/card/status_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class MyRouteCard extends StatelessWidget {
  final String shopname;
  final String location;
  final String number;
  const MyRouteCard({
    super.key,
    required this.shopname,
    required this.location,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          blackText(shopname, 16, fontWeight: FontWeight.w600),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              svgWidget('assets/svg/location.svg'),
              const SizedBox(
                width: 5,
              ),
              greyText(location, 12)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            svgWidget('assets/svg/Call.svg', size: 15),
            const SizedBox(
              width: 5,
            ),
<<<<<<< HEAD
            greyText(number, 12),
            SizedBox(
=======
            GreyText(
              text: number,
            ),
            const SizedBox(
>>>>>>> main
              width: 30,
            ),
            svgWidget('assets/svg/pin_drop.svg',
                size: 20,
                color: const ColorFilter.mode(redColor, BlendMode.srcIn)),
            TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                child: const Text(
                  "Google Map",
                  style: TextStyle(color: mapColor, fontSize: 12),
                )),
            const SizedBox(
              width: 50,
            ),
            orderButtonFunction('Pending')
          ]),
        ]));
  }
}
