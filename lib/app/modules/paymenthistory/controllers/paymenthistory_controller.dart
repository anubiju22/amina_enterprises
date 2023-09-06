import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constraints/date_formats.dart';

class PaymenthistoryController extends GetxController {
  RxString fromDate = ''.obs;
  RxString toDate = ''.obs;

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
}
