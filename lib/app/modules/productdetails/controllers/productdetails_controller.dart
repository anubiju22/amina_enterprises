import 'package:get/get.dart';

class ProductdetailsController extends GetxController {
  RxString selectedOption = ''.obs;
  String selectedLoad = 'CARTOON';
  List<String> iteams = ['CARTOON', 'CUT SIZE', 'SET', 'PAIR'];

  final count = 0.obs;

  void onClickLoad(String value) {
    selectedLoad = value;

    //  print(value);
    update();
  }

  void setSelectedOption(String option) {
    selectedOption.value = option;
  }
}
