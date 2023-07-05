import 'package:amina_enterprises/app/modules/home/model/shop_model.dart';
import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:amina_enterprises/config/session.dart';
import 'package:get/get.dart';

class ShopsController extends GetxController {
  final AuthProvider _provider = GetInstance().find<AuthProvider>();
  RxList<Shop> addedDealers = <Shop>[].obs;
  var isLoading = false.obs;
  ShopViewModel? shopViewModel;
  int index = 0;
  String size = '10';
  String abpid = '';
  String keyword = '';
  String shopId = '';

  // final List<String> shopNames = [
  //   'PRINCE FOOTWEAR BANDBAHAL',
  //   'CHOLAN SHOE MART'
  // ];
  // final List<String> shopAddress = [
  //   'Crystal Building, Malad, Rathodi, Mankavu, Calicut',
  //   'Crystal Building, Malad, Rathodi, Mankavu, Calicut'
  // ];

  @override
  void onInit() {
    getShop();
    super.onInit();
  }

  getShop() async {
    isLoading(true);
    try {
      final response =
          await AuthProvider().getShop(index.toString(), size, "12", keyword);
      if (response != null) {
        if (response.status) {
          addedDealers.addAll(response.details);
        }
      }
    } finally {
      isLoading(false);
    }
  }
}
