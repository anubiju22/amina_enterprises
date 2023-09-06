import 'package:amina_enterprises/constraints/date_formats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpiryProductsController extends GetxController {
  RxString date = ''.obs;
  DateTime selectedDate = DateTime.now();
  RxString totalWkHour = '00:00:00'.obs;

  @override
  void onInit() {
    date.value = dateToDate(selectedDate);
    super.onInit();
  }

  incrementDay() {
    selectedDate =
        DateTime(selectedDate.year, selectedDate.month, selectedDate.day + 1);
    date.value = dateToDate(selectedDate);
  }

  decrementDay() {
    selectedDate =
        DateTime(selectedDate.year, selectedDate.month, selectedDate.day - 1);
    date.value = dateToDate(selectedDate);
  }
}
