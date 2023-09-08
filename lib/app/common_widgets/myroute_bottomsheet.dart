import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/home_card/home_item_card.dart';
import 'package:amina_enterprises/app/common_widgets/svg_icons/svg_widget.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/modules/myroute/controllers/myroute_controller.dart';
import 'package:amina_enterprises/app/modules/myroute/model/route_list.dart';
import 'package:amina_enterprises/app/modules/myroute/views/custom_switch.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constraints/common_widgets.dart';
import '../modules/myroute/views/retailer_profile.dart';

class RouteBottomSheet extends GetView<MyrouteController> {
  final String tittle, location;
  final RouteList items;

  const RouteBottomSheet({
    super.key,
    required this.tittle,
    //  required this.type,
    required this.items,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.90,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: blackText(tittle, 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: greyText(location, 12,
                          textOverflow: TextOverflow.ellipsis)),
                ],
              ),
              Column(
                children: [
                  Obx(
                    () => blackText(
                        controller.checkIn.value ? 'Check Out' : 'Check In',
                        14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => CustomSwitch(
                        value: controller.checkIn.value,
                        onChanged: (bool val) {}),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          divider(),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    const AlertBox(),
                  );
                },
              ),
              HomeCardItem(
                path: "assets/svg/home_profile.svg",
                label: "Profile",
                ontap: () {
                  // Get.RetailerProfile();
                  Get.to(() => RetailerProfile(items: items));
                },
              ),
              HomeCardItem(
                path: "assets/svg/stock.svg",
                label: "View Stock",
                ontap: () {
                  Get.toNamed(Routes.STOCKS);
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
                    size: 15, color: Colors.white, blendMode: BlendMode.srcIn),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class AlertBox extends StatelessWidget {
  const AlertBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 12),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      title: blackText("Mark Visit", 20, fontWeight: FontWeight.w600),
      content: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.expand_more)),
                    fillColor: const Color(0xFFF3F3F3),
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
              blackText('Remarks', 18, fontWeight: FontWeight.w400),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 100,
                child: TextFormField(
                  maxLines: null,
                  expands: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    fillColor: const Color(0xFFF3F3F3),
                    filled: true,
                    hintText: " ",
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
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  svgWidget('assets/svg/location.svg',
                      color: redColor, blendMode: BlendMode.srcIn),
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
