import 'package:amina_enterprises/constraints/date_formats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendanceReportController extends GetxController {
  RxString date = ''.obs;
  DateTime selectedDate = DateTime.now();
  RxString totalWkHour = '00:00:00'.obs;

  @override
  void onInit() {
    date.value = dateFormat2(selectedDate);
    super.onInit();
  }

  incrementMonth() {
    selectedDate =
        DateTime(selectedDate.year, selectedDate.month + 1, selectedDate.day);
    date.value = dateFormat2(selectedDate);
  }

  decrementMonth() {
    selectedDate =
        DateTime(selectedDate.year, selectedDate.month - 1, selectedDate.day);
    date.value = dateFormat2(selectedDate);
  }

  void changeDate(BuildContext context) async {
    final pickDate = await selectDate(context);

    if (pickDate != null) {
      selectedDate = pickDate;
      date.value = dateFormat2(pickDate);
    }
  }
}
