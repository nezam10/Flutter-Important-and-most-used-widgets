import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization/controller.dart';
import 'package:flutter_localization/flutter_localization/second_page.dart';
import 'package:flutter_localization/main.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    print("Initial value : ............... ${homeController.check.value}");
    print("home page");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello'.tr),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Bangla"),
              onPressed: () {
                if (homeController.check.value == true) {
                  Get.updateLocale(
                    const Locale('bn', 'BD'),
                  );
                  homeController.check(false);
                  prefs.setBool("saveLanguage", false);
                } else {
                  Get.updateLocale(
                    const Locale('en', 'US'),
                  );
                  homeController.check(true);
                  prefs.setBool("saveLanguage", true);
                }
                print("value : ............... ${homeController.check.value}");
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondPage());
              },
              child: Text("go"),
            ),
          ],
        ),
      ),
    );
  }
}
