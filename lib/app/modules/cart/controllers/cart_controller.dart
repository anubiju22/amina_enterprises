import 'package:amina_enterprises/app/modules/cart/views/support_page_view.dart';
import 'package:amina_enterprises/constraints/alert_dialog.dart';
import 'package:get/get.dart';

class CartController extends GetxController {

  void checkOut() async {
    dynamic returnResponse = await openDialog(
        'Checkout', 'Are you sure you want to Checkout this orders ?');
    if (returnResponse == true) {
      Get.to(const SupportPageView());
    }
  }
}
