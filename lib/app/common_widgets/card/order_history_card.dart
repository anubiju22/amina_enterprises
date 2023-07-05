import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class OrderHistoryCardWidget extends StatelessWidget {
  final Function onClick;
  final String orderno;
  final String enquryno;
  final String location;
  const OrderHistoryCardWidget(
      {super.key,
      required this.onClick,
      required this.orderno,
      required this.enquryno,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                greyText('Order No : ${orderno}', 12),
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
            blackText(enquryno, 16, fontWeight: FontWeight.w600),
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
                  child: greyText(location, 12,
                      textOverflow: TextOverflow.ellipsis),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
