import 'package:amina_enterprises/app/modules/home/model/support.dart';
import 'package:amina_enterprises/app/modules/login/provider/auth_provider.dart';
import 'package:get/get.dart';

class SupportController extends GetxController {
  final isLoading = false.obs;
  final AuthProvider _provider = GetInstance().find<AuthProvider>();
  var contactList = <Contact>[].obs;
  final items = [
    'Dealer ID Creation',
    'Gift Updation',
    'Employee VKC Parivar ID Creation',
    'Team Mapping'
  ];
  @override
  void onInit() {
    getsupport();
    super.onInit();
  }

  Future<void> getsupport() async {
    isLoading(true);
    try {
      final response = await _provider.supportApi();
      if (response != null) {
        if (response.status) {
          contactList.addAll(response.contact);
        }
      }
    } finally {
      isLoading(false);
    }
  }
}
