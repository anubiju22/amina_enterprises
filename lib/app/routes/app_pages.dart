import 'package:get/get.dart';

import '../modules/attendance_report/bindings/attendance_report_binding.dart';
import '../modules/attendance_report/views/attendance_report_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/footwears/bindings/footwears_binding.dart';
import '../modules/footwears/views/footwears_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/dashboard.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/employee_login.dart';
import '../modules/login/views/login_home_view.dart';
import '../modules/login/views/otp_view.dart';
import '../modules/login/views/retailer_login.dart';
import '../modules/myroute/bindings/myroute_binding.dart';
import '../modules/myroute/views/myroute_view.dart';
import '../modules/myvisit/bindings/myvisit_binding.dart';
import '../modules/myvisit/views/myvisit_view.dart';
import '../modules/order_history/bindings/order_history_binding.dart';
import '../modules/order_history/views/order_history_details_view.dart';
import '../modules/order_history/views/order_history_view.dart';
import '../modules/productdetails/bindings/productdetails_binding.dart';
import '../modules/productdetails/views/productdetails_view.dart';
import '../modules/shops/bindings/shops_binding.dart';
import '../modules/shops/views/shops_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/support/bindings/support_binding.dart';
import '../modules/support/views/support_view.dart';

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
      name: _Paths.PRODUCTDETAILS,
      page: () => const ProductdetailsView(),
      binding: ProductdetailsBinding(),
    ),
    GetPage(
      name: _Paths.EMPLOYEE_LOGIN,
      page: () => const EmployeeLoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.RETAILER_LOGIN,
      page: () => const RetailerLoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SUPPORT,
      page: () => const SupportView(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_HISTORY,
      page: () => const OrderHistoryView(),
      binding: OrderHistoryBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_HISTORY_DETAILS,
      page: () => const OrderHistoryDetailsView(),
      binding: OrderHistoryBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
  ];
}
