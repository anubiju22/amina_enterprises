import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String dateFormat2(DateTime dateTime) {
  return DateFormat('dd/MM/yyyy').format(dateTime);
}

Future<DateTime?> selectDate(BuildContext context) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    initialEntryMode: DatePickerEntryMode.calendar,
    firstDate: DateTime(1900, 8),
    lastDate: DateTime(2050),
  );
  if (pickedDate != null && pickedDate != DateTime.now()) {
    return pickedDate;
  }
  return null;
}
