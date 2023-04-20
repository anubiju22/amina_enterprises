import 'package:get/get.dart';

class RetailerHomeController extends GetxController {
  final List<String> imagesList = [
    'assets/image/home_slide1.png',
    'assets/image/home_slide1.png'
  ];
  var currentIndex = 0.obs;

  void setCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
