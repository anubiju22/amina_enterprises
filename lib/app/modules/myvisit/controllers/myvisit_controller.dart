import 'package:amina_enterprises/constraints/date_formats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyvisitController extends GetxController {
  RxString date = ''.obs;
  DateTime selectedDate = DateTime.now();
  @override
  void onInit() {
    date.value = dateFormat2(selectedDate);
    super.onInit();
  }

  void changeDate(BuildContext context) async {
    final pickDate = await selectDate(context);

    if (pickDate != null) {
      selectedDate = pickDate;
      date.value = dateFormat2(pickDate);
    }
  }

  incrementDay() {
    selectedDate =
        DateTime(selectedDate.year, selectedDate.month, selectedDate.day + 1);
    date.value = dateFormat2(selectedDate);
  }

  decrementDay() {
    selectedDate =
        DateTime(selectedDate.year, selectedDate.month, selectedDate.day - 1);
    date.value = dateFormat2(selectedDate);
  }
}
