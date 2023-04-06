import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  final String shopname;
  final String location;
  final String? number;
  // final bool? visible;
  // final bool? visibles;
  final String? time;
  final String? timer;
  const ShopCard({
    super.key,
    required this.shopname,
    required this.location,
    this.number,
    // this.visible = false,
    this.time,
    this.timer,
    // this.visibles = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlackText(
              text: shopname,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                svgWidget('assets/svg/location.svg'),
                const SizedBox(
                  width: 5,
                ),
                GreyText(
                  text: location,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                svgWidget('assets/svg/Call.svg', size: 15),
                const SizedBox(
                  width: 5,
                ),
                GreyText(
                  text: number.toString(),
                )
              ],
            ),
            // Visibility(
            //   visible: visibles!,
            //   child: Row(
            //     children: [
            //       svgWidget('assets/svg/time.svg', size: 15),
            //       const SizedBox(
            //         width: 5,
            //       ),
            //       GreyText(
            //         text: time.toString(),
            //       ),
            //       const SizedBox(
            //         width: 50,
            //       ),
            //       svgWidget('assets/svg/timer.svg', size: 15),
            //       const SizedBox(
            //         width: 5,
            //       ),
            //       GreyText(
            //         text: timer.toString(),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
