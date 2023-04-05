import 'package:amina_enterprises/constraints/date_formats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MyrouteController extends GetxController {
  //TODO: Implement MyrouteController

  var selectedDate = DateTime.now().obs;
  var selectedMonth = DateTime.now().month;
  // DateFormat('MMMM');

  // String formatDate(DateTime date) => new DateFormat("MMMM d").format(date);
  //  DateTime.now().month;
  var selectedYear = DateTime.now().year;

  final isLoading = false.obs;
  RxBool isSelected = false.obs;
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

  toogle() {
    isSelected = isSelected;
  }
}
