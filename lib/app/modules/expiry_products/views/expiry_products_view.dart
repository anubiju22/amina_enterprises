import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expiry_products_controller.dart';

class ExpiryProductsView extends GetView<ExpiryProductsController> {
  const ExpiryProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpiryProductsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExpiryProductsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
