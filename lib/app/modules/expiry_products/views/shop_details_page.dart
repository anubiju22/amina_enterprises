import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/card/expiry_product_home_card.dart';
import 'package:amina_enterprises/app/common_widgets/card/expiry_shop_card.dart';
import 'package:amina_enterprises/app/common_widgets/date_picker/attendance_date_picker.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expiry_products_controller.dart';

class ExpiryProductShopDetailsView extends GetView<ExpiryProductsController> {
  const ExpiryProductShopDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        label: "Expiry Products",
        visibility: true,
      ),
      body: Center(
          child: Column(
        children: [
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
          Column(
            children: [
              ExpiryHomeCard(
                visible: false,
                location: "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                ontap: () {},
                shopname: 'PRINCE AGENCIES',
              ),
              const Divider(
                color: Color(0xffE2E2E2),
                thickness: 1.5,
              ),
              Row(
                children: [
                  blackText("Total Products:", 16, fontWeight: FontWeight.w500),
                  redText("5", 16, fontWeight: FontWeight.w600)
                ],
              ).paddingOnly(left: 20, top: 10),
              const SizedBox(
                height: 5,
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: 350,
                  padding: const EdgeInsets.all(0.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ExpiryShopCard(
                        image: "assets/image/expiryproduct.png",
                        qty: "15",
                        name: 'Turmeric Powder',
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
