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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
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
              blackText(shopname, 16, fontWeight: FontWeight.w600),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  svgWidget('assets/svg/location.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: greyText(
                      location,
                      12,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  svgWidget('assets/svg/Call.svg', size: 15),
                  const SizedBox(
                    width: 5,
                  ),
                  greyText(number.toString(), 12)
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
      ),
    );
  }
}
