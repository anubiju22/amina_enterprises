import 'package:amina_enterprises/app/common_widgets/app_bar/common_app_bar.dart';
import 'package:amina_enterprises/app/common_widgets/date_picker/attendance_date_picker.dart';
import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/attendance_report_controller.dart';

class AttendanceReportView extends GetView<AttendanceReportController> {
  const AttendanceReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBgColor,
        appBar: const CommonAppBar(
          label: 'Attendance Report',
        ),
        body: Column(
          children: [
            Obx(() => AttendanceDatePicker(
                  date: controller.date.value,
                  changeDate: () {
                    controller.changeDate(context);
                  },
                  decrement: () {
                    controller.decrementMonth();
                  },
                  increment: () {
                    controller.incrementMonth();
                  },
                )),
            const Divider(
              thickness: 5,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(children: [
                const Icon(
                  Icons.swipe,
                  color: Colors.grey,
                  size: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text("Scroll table right to left",
                    style: TextStyle(fontSize: 10)),
                const Spacer(),
                const Text(
                  "Total Work Hours",
                ),
                const SizedBox(
                  width: 5,
                ),
                Obx(() => Text(
                      "${controller.totalWkHour} hr",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ))
              ]),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              color: homeMenuColor,
              height: 30,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    header(context, 'Date'),
                    header(context, 'Working Hrs'),
                    header(context, 'login'),
                    header(context, 'log out'),
                    header(context, 'Photo'),
                  ]),
            ),
          ],
        ));
  }

  SizedBox header(BuildContext context, String label) {
    return SizedBox(child: Text(label));
  }

  SizedBox footer(BuildContext context, String label) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * .20,
        child: Text(
          label,
          style: const TextStyle(fontSize: 12),
        ));
  }
}
