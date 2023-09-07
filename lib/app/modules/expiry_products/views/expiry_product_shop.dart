import 'package:amina_enterprises/app/common_widgets/card/expiry_product_home_card.dart';
import 'package:amina_enterprises/app/common_widgets/date_picker/attendance_date_picker.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:get/get.dart';

import '../controllers/expiry_products_controller.dart';

class ExpiryProductShopView extends GetView<ExpiryProductsController> {
  const ExpiryProductShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Obx(() => AttendanceDatePicker(
                date: controller.date.value,
                changeDate: () {},
                decrement: () {
                  controller.decrementDay();
                },
                increment: () {
                  controller.incrementDay();
                },
              )),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredList(
                      position: index,
                      child: FlipAnimation(
                        duration: const Duration(milliseconds: 800),
                        child: Column(
                          children: [
                            ExpiryHomeCard(
                              visible: true,
                              location:
                                  "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                              ontap: () {
                                Get.toNamed(
                                    Routes.EXPIRY_PRODUCTS_SHOP_DETAILS);
                              },
                              shopname: 'PRINCE AGENCIES',
                            ),
                            const Divider(
                              color: Color(0xffE2E2E2),
                              thickness: 1.5,
                            )
                          ],
                        ),
                      ));
                }),
          ),
        ],
      )),
    );
  }
}
