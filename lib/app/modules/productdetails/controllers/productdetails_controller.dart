import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:get/get.dart';

import '../../home/model/product_detailsmodel.dart';

class ProductdetailsController extends GetxController {
  final isloading = false.obs;
  final productid = Get.arguments[0] as String;
  final productName = Get.arguments[1] as String;
  final AuthProvider _provider = GetInstance().find<AuthProvider>();
  RxList<Datum> productList = <Datum>[].obs;
  RxString selectedOption = ''.obs;
  Datum? product;
  Attribute? selectedAttribute;
  String selectedLoad = 'CARTOON';
  List<String> iteams = ['CARTOON', 'CUT SIZE', 'SET', 'PAIR'];

  final count = 0.obs;
  @override
  void onInit() {
    getproductdetails();
    super.onInit();
  }

  void onClickLoad(String value) {
    selectedLoad = value;

    //  print(value);
    update();
  }

  void setSelectedOption(String option) {
    selectedOption.value = option;
  }

  // void changeSelectedAttribute(Attribute attribute) {
  //   selectedAttribute = attribute;

  //   for (var element in product!.attributes) {
  //     // element.isSelected = false;
  //     if (element.colorId == attribute.colorId) {
  //       // element.isSelected = true;
  //     }
  //   }
  //   update();
  // }

  Future<void> getproductdetails() async {
    isloading(true);
    try {
      final response = await _provider.getProductDetailsApi(
          'retailer', '829', productid, 'KERALA', 'retailer', '', '');
      if (response != null) {
        if (response.status) {
          productList.addAll(response.data);
          product = response.data.first;
        }
      }
    } catch (e) {
      print('error');
    } finally {
      isloading(false);
    }
  }
}
