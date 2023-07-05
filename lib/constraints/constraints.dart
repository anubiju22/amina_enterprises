import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void contactAdministrationSnackBar(String msg, String details) {
  Get.snackbar(
    msg,
    details,
    icon: const Icon(Icons.error, color: Colors.white),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.blue,
    borderRadius: 20,
    margin: const EdgeInsets.all(15),
    colorText: Colors.white,
    duration: const Duration(seconds: 4),
    isDismissible: true,
    dismissDirection: DismissDirection.startToEnd,
    forwardAnimationCurve: Curves.easeOutBack,
  );
}
