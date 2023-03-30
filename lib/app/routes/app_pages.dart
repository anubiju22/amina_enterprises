import 'package:get/get.dart';

import '../modules/attendance_report/bindings/attendance_report_binding.dart';
import '../modules/attendance_report/views/attendance_report_view.dart';
import '../modules/camera_picture/bindings/camera_picture_binding.dart';
import '../modules/camera_picture/views/camera_picture_view.dart';
import '../modules/footwears/bindings/footwears_binding.dart';
import '../modules/footwears/views/footwears_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/dashboard.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/views/otp_view.dart';
import '../modules/myroute/bindings/myroute_binding.dart';
import '../modules/myroute/views/myroute_view.dart';
import '../modules/myvisit/bindings/myvisit_binding.dart';
import '../modules/myvisit/views/myvisit_view.dart';
import '../modules/shops/bindings/shops_binding.dart';
import '../modules/shops/views/shops_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const DashboardView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SHOPS,
      page: () => const ShopsView(),
      binding: ShopsBinding(),
    ),
    GetPage(
      name: _Paths.MYVISIT,
      page: () => const MyvisitView(),
      binding: MyvisitBinding(),
    ),
    GetPage(
      name: _Paths.MYROUTE,
      page: () => const MyrouteView(),
      binding: MyrouteBinding(),
    ),
    GetPage(
      name: _Paths.FOOTWEARS,
      page: () => const FootwearsView(),
      binding: FootwearsBinding(),
    ),
    GetPage(
      name: _Paths.ATTENDANCE_REPORT,
      page: () => const AttendanceReportView(),
      binding: AttendanceReportBinding(),
    ),
    GetPage(
      name: _Paths.CAMERA_PICTURE,
      page: () => const CameraPictureView(),
      binding: CameraPictureBinding(),
    ),
  ];
}
