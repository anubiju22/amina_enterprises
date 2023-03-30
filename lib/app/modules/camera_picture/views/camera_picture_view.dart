import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/camera_picture_controller.dart';

class CameraPictureView extends GetView<CameraPictureController> {
  const CameraPictureView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CameraPictureView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CameraPictureView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
