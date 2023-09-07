import 'package:amina_enterprises/app/common_widgets/card/expiry_home_product_card.dart';
import 'package:amina_enterprises/app/common_widgets/date_picker/attendance_date_picker.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expiry_products_controller.dart';

class ExpiryProductProductsView extends GetView<ExpiryProductsController> {
  const ExpiryProductProductsView({Key? key}) : super(key: key);
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
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ExpiryHomeProductCard(
                        visible: true,
                        location: "Turmeric Powder",
                        ontap: () {
                          Get.toNamed(Routes.EXPIRY_PRODUCT_PRODUCTS_DETAILS);
                        },
                        shopname: '#1236',
                        image: "assets/image/product.png",
                      ),
                      const Divider(
                        color: Color(0xffE2E2E2),
                        thickness: 1.5,
                      )
                    ],
                  );
                }),
          ),
        ],
      )),
    );
  }
}
