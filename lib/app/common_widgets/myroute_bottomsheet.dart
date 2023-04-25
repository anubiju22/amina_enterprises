import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/myroute/controllers/myroute_controller.dart';
import 'package:amina_enterprises/app/modules/myvisit/views/myvisit_view.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/myroute/views/retailer_profile.dart';

import 'textfeild/logintextfeild.dart';

class RouteBottomSheet extends GetView<MyrouteController> {
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
      height: MediaQuery.of(context).size.width * 0.80,
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
          blackText(tittle, 16, fontWeight: FontWeight.w600),
          const SizedBox(
            height: 10,
          ),
          greyText(type, 12),
          const SizedBox(
            height: 20,
          ),
          divider(),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeCardItem(
                path: "assets/svg/order.svg",
                label: "Orders",
                ontap: () {},
              ),
              HomeCardItem(
                path: "assets/svg/route.svg",
                label: "Mark Visit",
                ontap: () {
                  // Get.dialog(Visitpopup());
                  Get.dialog(
                    const alertBox(),
                  );
                },
              ),
              HomeCardItem(
                path: "assets/svg/home_profile.svg",
                label: "Profile",
                ontap: () {
                  // Get.RetailerProfile();
                  Get.to(() => RetailerProfile(),
                      arguments: {'items': controller.shopNames});
                },
              ),
              HomeCardItem(
                path: "assets/svg/payment_history.svg",
                label: "Pay History",
                ontap: () {
                  Get.toNamed(Routes.PAYMENTHISTORY);
                },
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
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

class alertBox extends StatelessWidget {
  const alertBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 12),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      title: blackText("Mark Visit", 20, fontWeight: FontWeight.w600),
      content: Container(
        height: 250,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            blackText('Remarks', 18, fontWeight: FontWeight.w400),
            const SizedBox(
              height: 15,
            ),
            // const LoginTextField(
            //   hintText: 'select',
            // ),
            SizedBox(
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.expand_more)),
                  fillColor: Color(0xFFF3F3F3),
                  filled: true,
                  hintText: "Select Item",
                  hintStyle: const TextStyle(
                    color: Color(0xff7b7b7b),
                    fontSize: 16,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                svgWidget('assets/svg/location.svg',
                    color: const ColorFilter.mode(redColor, BlendMode.srcIn)),
                const SizedBox(
                  width: 5,
                ),
                greyText(
                  fontWeight: FontWeight.w400,
                  "Palayam, Kozhikode",
                  12,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CommonButtonWidget(
              label: "UPDATE",
              onClick: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
      // actions: [
      //   TextButton(
      //     child: Text('Close'),
      //     onPressed: () {
      //       Get.back(); // dismiss the dialog
      //     },
      //   ),
      // ],
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
        child: const Center(
          child: Text(
            'This is a popup screen',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
