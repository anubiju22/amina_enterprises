import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/myvisit_controller.dart';

class MyvisitView extends GetView<MyvisitController> {
  const MyvisitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyvisitView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyvisitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
