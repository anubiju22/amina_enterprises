import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

class ViewPaymentCard extends StatelessWidget {
  final String shop;
  final String location;
  final String date;
  final String? amount;
  final String balance;
  final String invdate;
  final String invamount;
  final bool visible;
  // final bool dueVisible;
  final bool amtVisible;
  final Function? onTap;
  final String? dueDate;
  final Color? color;

  const ViewPaymentCard({
    super.key,
    required this.shop,
    required this.location,
    required this.date,
    this.amount,
    required this.balance,
    required this.invdate,
    required this.invamount,
    required this.visible,
    this.onTap,
    this.dueDate,
    // required this.dueVisible,
    required this.amtVisible,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // if (!visible)
                  //   Row(
                  //     children: [
                  //       Icon(
                  //         Icons.calendar_today,
                  //         color: Color(0xFF1C1B1F),
                  //         size: 14,
                  //       ),
                  //       const SizedBox(width: 6),
                  //       Text(
                  //         date,
                  //         style: const TextStyle(
                  //           color: Color(0xFF6C6C6C),
                  //           fontSize: 12,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Color(0xff6c6c6c),
                      fontSize: 12,
                    ),
                  ),
                  // if (!visible)
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    shop,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      svgWidget('assets/svg/location.svg'),
                      const SizedBox(width: 4),
                      greyText(location, 12)
                    ],
                  ),
                ],
              ),
            ),
            // Spacer(),
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    invdate,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6C6C6C)),
                  ),
                  Text(invamount,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6C6C6C)))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: amtVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      balance,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFE81C25)),
                    ),
                    Text(
                      amount.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: visible,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 90),
                    child: CommonButtonWidget(
                      borderRadius: 8,
                      fontSize: 16,
                      label: "COLLECT",
                      onClick: () {},
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
