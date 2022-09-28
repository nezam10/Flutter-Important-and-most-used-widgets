import 'package:flutter_localization/main.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var check = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    check = (prefs.getBool('saveLanguage') ?? false).obs;
  }
}
