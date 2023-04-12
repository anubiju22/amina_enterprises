import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/button/loginbutton.dart';
import 'package:amina_enterprises/app/modules/productdetails/views/cut_size_section.dart';
import 'package:amina_enterprises/app/modules/productdetails/views/product_color_section.dart';
import 'package:amina_enterprises/app/modules/productdetails/views/product_header_section.dart';
import 'package:amina_enterprises/app/modules/productdetails/views/product_size_section.dart';
import 'package:amina_enterprises/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/productdetails_controller.dart';

class ProductdetailsView extends GetView<ProductdetailsController> {
  const ProductdetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(label: "GP4300"),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15),
          children: [
            Image.network(
              "https://icon2.cleanpng.com/20180323/eaq/kisspng-slipper-footwear-shoe-sandal-flip-flops-men-shoes-5ab57871171a07.8676672615218422890946.jpg",
              width: MediaQuery.of(context).size.width * .6,
              height: MediaQuery.of(context).size.width * .6,
              fit: BoxFit.fill,
            ),
            const Spacer(),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        // blurRadius: 0.0,
                        // spreadRadius: 0.0,
                        blurRadius: 25.0,
                        offset: Offset(0, -10)
                        // offset:
                        //     Offset(2.0, 2.0), // shadow direction: bottom right
                        )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const ProductHeaderSection(),
                      const ProductColorSection(),
                      ProductSizeCategorySection(),
                      ProductCutSizeDealerBuilder(),
                      CommonButtonWidget(
                        label: "ADD TO CART",
                        onClick: () {
                          Get.toNamed(Routes.CART);
                        },
                      )
                    ],
                  ),
                )),
          ]),
    );
  }
}
