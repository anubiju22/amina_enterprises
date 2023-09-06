import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constraints/date_formats.dart';

class PendingCollectionController extends GetxController {
  DateTime currentDate = DateTime.now();
  RxString fromDate = ''.obs;
  RxString toDate = ''.obs;
  // String _fromvalue = "From Date";
  // String _toValue = 'To Date';

  void changeFromDate(BuildContext context) async {
    final pickDate = await selectDate(context);

    if (pickDate != null) {
      fromDate.value = dateFormat2(pickDate);
    }
  }

  void changeToDate(BuildContext context) async {
    final pickDate = await selectDate(context);

    if (pickDate != null) {
      toDate.value = dateFormat2(pickDate);
    }
  }
  // void changeText(String value) {
  //   _fromvalue = value;
  // }
}
