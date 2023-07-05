import 'package:amina_enterprises/app/modules/home/model/product_model.dart';
import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FootwearsController extends GetxController {
  final isLoading = false.obs;

  final AuthProvider _provider = GetInstance().find<AuthProvider>();
  RxList<Product> productList = <Product>[].obs;
  final List<Color> colors = [Colors.white, Colors.black];

  int index = 0;
  String productSize = '';
  String newlaunch = '';
  String colorId = '';
  String brand = '';
  String construction = '';
  String size = '10';
  String field = '';
  String filterType = '';
  String keyword = '';
  String categoryId = '1';
  String isTrending = '';
  String isNewLaunch = '1';
  String collectionId = '';
  String userId = '1251';
  String state = 'TAMILNADU';
  String type = 'dealer';
  String inStock = '';
  @override
  void onInit() {
    super.onInit();
    productsFirstLoad();
  }

  void productsFirstLoad() async {
    index = 0;
    isLoading(true);
    productList.clear();
    await productsListGet();
    isLoading(false);
  }

  Future<void> productsListGet() async {
    try {
      final response = await _provider.productsListApi(
          index.toString(),
          brand,
          isTrending,
          categoryId,
          userId,
          state,
          productSize,
          isNewLaunch,
          newlaunch,
          collectionId,
          type,
          colorId,
          size.toString(),
          field,
          filterType,
          construction,
          keyword,
          inStock);

      if (response != null) {
        if (response.status) {
          productList.addAll(response.data!);

          if (int.parse(response.count!) < int.parse(size)) {
            // hasMoreItems.value = false;
          }
        } else {}
      } else {
        // Get.snackbar("Error", "Contact Administrator");
      }
    } catch (e) {
      // contactAdministrationSnackBar('Something Went Wrong', e.toString());
    } finally {}
  }
}
