import 'package:amina_enterprises/app/modules/home/model/orderhistory_model.dart';
import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:amina_enterprises/config/session.dart';
import 'package:get/get.dart';

class OrderHistoryController extends GetxController {
  final isLoading = false.obs;
  final AuthProvider _provider = GetInstance().find<AuthProvider>();
  RxList<EmpOrderHistory> myOrdersResponse = <EmpOrderHistory>[].obs;

  @override
  void onInit() {
    myorderHistoryApi();
    super.onInit();
  }

  Future<void> myorderHistoryApi() async {
    isLoading(true);
    myOrdersResponse.clear();
    try {
      final response = await _provider.myorderHistoryApi('4', 'retailer'
          //  '1258'
          );
      if (response != null) {
        if (response.status) {
          myOrdersResponse.addAll(response.data!);
        }
      } else {
        // Get.snackbar("Error", "Contact Administrator");
      }
    } catch (e) {
      print('error');
      // contactAdministrationSnackBar('Something Went Wrong', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
