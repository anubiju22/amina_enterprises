import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
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
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Row(
            children: [
              Column(
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
                  if (!visible)
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
                      const Icon(
                        Icons.pin_drop_outlined,
                        size: 14,
                        color: Color(
                          0xFF1C1B1F,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        location,
                        style: const TextStyle(
                          color: Color(0xFF6C6C6C),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Spacer(),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 8,
          ),
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
              // SizedBox(
              //   height: 6,
              // ),
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
          // Visibility(
          //   visible: dueVisible,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(dueDate.toString(),
          //           style: TextStyle(
          //             fontSize: 12,
          //             fontWeight: FontWeight.w500,
          //             color: color,
          //           )),
          //       Text(
          //         balance,
          //         style: TextStyle(
          //             fontSize: 12,
          //             fontWeight: FontWeight.w500,
          //             color: Color(0xFFE81C25)),
          //       ),
          //     ],
          //   ),
          // ),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                child: CommonButtonWidget(
                  borderRadius: 8,
                  fontSize: 16,
                  label: "Collect",
                  onClick: () {},
                )),
          )
        ]),
      ),
    );
  }
}
