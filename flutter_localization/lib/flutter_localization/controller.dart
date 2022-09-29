import 'package:flutter_localization/main.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var check = false.obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    isLoading(false);
    //check = (prefs.getBool('saveLanguage') ?? false).obs;
  }
}
