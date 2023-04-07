import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/myvisit/views/myvisit_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class RouteBottomSheet extends StatelessWidget {
  final String tittle, type;
  const RouteBottomSheet({super.key, required this.tittle, required this.type});

  @override
  Widget build(BuildContext context) {
    return
        // Align(
        //   alignment: Alignment.topRight,
        //   child: Container(
        //     height: 40,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Colors.green,
        //     ),
        //     child: IconButton(
        //         onPressed: () {
        //           Get.back();
        //         },
        //         icon: Icon(
        //           Icons.close,
        //           size: 25,
        //         )),
        //   ),
        // ),
        // Positioned(
        //     right: 0,
        //     top: 0,
        //     child: Container(
        //       height: 40,
        //       decoration:
        //           BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        //       child: Icon(
        //         Icons.close,
        //         size: 25,
        //       ),
        //     )),
        Container(
      height: MediaQuery.of(context).size.width * 0.75,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BlackText(
            text: tittle,
          ),
          SizedBox(
            height: 10,
          ),
          GreyText(
            text: type,
          ),
          SizedBox(
            height: 20,
          ),
          divider(),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeCardItem(
                path: "assets/svg/orders.svg",
                label: "Orders",
                ontap: () {},
              ),
              HomeCardItem(
                path: "assets/svg/route.svg",
                label: "Mark Visit",
                ontap: () {
                  // Get.dialog(Visitpopup());
                  Get.dialog(
                    AlertDialog(
                      title: Text('AlertDialog Title'),
                      content: Text('AlertDialog Body'),
                      actions: [
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Get.back(); // dismiss the dialog
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              HomeCardItem(
                path: "assets/svg/home_profile.svg",
                label: "Profile",
                ontap: () {},
              ),
              HomeCardItem(
                path: "assets/svg/payment_history.svg",
                label: "Payment History",
                ontap: () {},
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Color(0xff6dfa56), Color(0xff31cd40)],
                  ),
                ),
                child: svgWidget('assets/svg/Call.svg',
                    size: 15,
                    color:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class Visitpopup extends StatelessWidget {
  const Visitpopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'This is a popup screen',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}