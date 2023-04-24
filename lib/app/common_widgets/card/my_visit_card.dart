import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class VisitCardWidget extends StatelessWidget {
  final String slno;
  final String name;
  // String checkIn,
  // String checkOut,
  final String location;
  final String duration;
  final String remark;
  const VisitCardWidget(
      {super.key,
      required this.slno,
      required this.name,
      required this.location,
      required this.duration,
      required this.remark});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.115,
      child: Row(children: <Widget>[
        header(context, slno),
        verticalDivider(),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 3, left: 5.0, right: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                blackText(name, 15,
                    fontWeight: FontWeight.w600,
                    textOverflow: TextOverflow.ellipsis),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    svgWidget('assets/svg/location.svg', size: 15),
                    Expanded(
                        child: greyText(location, 12,
                            textOverflow: TextOverflow.ellipsis)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        svgWidget('assets/svg/time.svg', size: 15),
                        greyText(duration, 12, fontWeight: FontWeight.w400)
                      ],
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: [
                        blackText('Remark :', 12),
                        const SizedBox(
                          width: 2,
                        ),
                        greyText(remark, 12)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

Container verticalDivider() {
  return Container(
      decoration: const BoxDecoration(
          border:
              Border(right: BorderSide(color: Color(0xFFE2E2E2), width: 1.5))));
}

SizedBox header(BuildContext context, String label, {double? width}) {
  return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * .10,
      child: Text(
        label,
        textAlign: TextAlign.center,
      ));
}
