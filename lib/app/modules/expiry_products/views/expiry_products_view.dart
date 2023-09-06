import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/modules/expiry_products/views/expiry_product_products.dart';
import 'package:amina_enterprises/app/modules/expiry_products/views/expiry_product_shop.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expiry_products_controller.dart';

class ExpiryProductsView extends GetView<ExpiryProductsController> {
  const ExpiryProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        label: "Expiry Products",
        visibility: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              labelColor: Colors.red,
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w400),
              unselectedLabelColor: Colors.black,
              onTap: (int index) {
                if (index == 0) {
                } else {}
              },
              tabs: const [
                Tab(
                  text: "SHOPS",
                ),
                Tab(
                  text: "PRODUCTS",
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  ExpiryProductShopView(),
                  ExpiryProductProductsView()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
