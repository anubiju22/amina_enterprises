import 'package:amina_enterprises/constraints/date_formats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MyrouteController extends GetxController {
  //TODO: Implement MyrouteController

  var selectedDate = DateTime.now().obs;
  DateTime selectedDates = DateTime.now();

  final isLoading = false.obs;
  var color = Colors.blue.obs;
  @override
  void onInit() {
    super.onInit();
  }

  chooseDate() async {
    isLoading(true);
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      isLoading(false);
    }
  }

  void changeColor() {
    color.value = color.value == Colors.blue ? Colors.red : Colors.blue;
  }
}
