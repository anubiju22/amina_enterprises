import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  final String shopname;
  final String location;
  final String? number;
  // final bool? visible;
  // final bool? visibles;
  final String? time;
  final String? timer;
  final Function? onClick;
  const ShopCard({
    super.key,
    required this.shopname,
    required this.location,
    this.number,
    // this.visible = false,
    this.time,
    this.timer,
    this.onClick,
    // this.visibles = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: InkWell(
        onTap: () {
          onClick!();
        },
        child: Container(
          // height: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: greyColor.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ]),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
