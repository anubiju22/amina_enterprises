import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
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
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.close,
                  size: 25,
                )),
          ),
        ),
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
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              BlackText(
                text: tittle,
              ),
              GreyText(
                text: type,
              ),
              divider(),
              Row(
                children: [
                  HomeCardItem(
                    path: "assets/svg/orders.svg",
                    label: "Orders",
                    ontap: () {
                      Get.toNamed(Routes.ATTENDANCE_REPORT);
                    },
                  ),
                  HomeCardItem(
                    path: "assets/svg/route.svg",
                    label: "Mark Visit",
                    ontap: () {
                      Get.toNamed(Routes.ATTENDANCE_REPORT);
                    },
                  ),
                  // HomeCardItem(
                  //   path: "assets/svg/home_profile.svg",
                  //   label: "Profile",
                  //   ontap: () {
                  //     Get.toNamed(Routes.ATTENDANCE_REPORT);
                  //   },
                  // ),
                  // HomeCardItem(
                  //   path: "assets/svg/payment_history.svg",
                  //   label: "Payment History",
                  //   ontap: () {
                  //     Get.toNamed(Routes.ATTENDANCE_REPORT);
                  //   },
                  // )
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
