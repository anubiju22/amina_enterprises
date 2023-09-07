import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/common_widgets/card/expiry_home_product_card.dart';
import 'package:amina_enterprises/app/common_widgets/card/expiry_product_details_card.dart';
import 'package:amina_enterprises/app/common_widgets/textfeild/textfield_with_baorder.dart';
import 'package:amina_enterprises/app/common_widgets/texts/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expiry_products_controller.dart';

class ExpiryProductsTransferView extends GetView<ExpiryProductsController> {
  const ExpiryProductsTransferView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        label: "Expiry Products",
        visibility: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              ExpiryHomeProductCard(
                visible: false,
                location: "Turmeric Powder",
                ontap: () {},
                shopname: '#1236',
                image: "assets/image/product.png",
              ),
              const Divider(
                color: Color(0xffE2E2E2),
                thickness: 1.5,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  blackText("Total Qty:", 14, fontWeight: FontWeight.w500),
                  redText("652", 14, fontWeight: FontWeight.w600)
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Column(
                  children: [
                    greyText("Enter Transfer Quantity", 15,
                        fontWeight: FontWeight.w500),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 220,
                      height: 40,
                      child: BoarderTextField(
                        hintText: "",
                        visible: false,
                        onChanged: (String value) {},
                      ),
                    ),
                  ],
                ),
              ),
              greyText("Transfer From", 15, fontWeight: FontWeight.w500)
                  .paddingOnly(top: 40, left: 15),
              ExpiryProductDetailsCard(
                visible: false,
                location: "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                ontap: () {},
                shopname: 'PRINCE AGENCIES',
                qty: '',
              ),
              greyText("Transfer To", 15, fontWeight: FontWeight.w500)
                  .paddingOnly(top: 30, left: 15),
              ExpiryProductDetailsCard(
                visible: false,
                location: "Crystal Building, Malad, Rathodi, Mankavu, Calicut",
                ontap: () {},
                shopname: 'PRINCE AGENCIES',
                qty: '',
              ),
            ]),
      ),
      bottomNavigationBar:
          CommonButtonWidget(label: "TRANSFER", onClick: () {}).paddingAll(15),
    );
  }
}
