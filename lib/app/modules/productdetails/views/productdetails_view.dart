import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/productdetails_controller.dart';

class ProductdetailsView extends GetView<ProductdetailsController> {
  const ProductdetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductdetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductdetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
