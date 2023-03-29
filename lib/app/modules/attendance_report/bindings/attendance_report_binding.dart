import 'package:get/get.dart';

import '../controllers/attendance_report_controller.dart';

class AttendanceReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AttendanceReportController>(
      () => AttendanceReportController(),
    );
  }
}
