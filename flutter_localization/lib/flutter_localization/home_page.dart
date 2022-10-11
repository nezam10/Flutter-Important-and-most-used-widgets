import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization/controller.dart';
import 'package:flutter_localization/flutter_localization/second_page.dart';
import 'package:flutter_localization/flutter_localization/test_widget.dart';
import 'package:flutter_localization/main.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    print("Initial value : ............... ${prefs.getBool("saveLanguage")}");
    print("home page");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization"),
      ),
      body: Obx(
        () => homeController.isLoading.value
            ? const CircularProgressIndicator()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hello'.tr),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: const Text("Bangla"),
                          onPressed: () {
                            prefs.setBool("saveLanguage", true);
                            Get.updateLocale(
                              const Locale('bn', 'BD'),
                            );
                            prefs.setString("savelan", "bn");

                            // if (prefs.getBool("saveLanguage") == true) {
                            //   Get.updateLocale(
                            //     const Locale('bn', 'BD'),
                            //   );
                            //   prefs.setBool("saveLanguage", false);
                            // } else {
                            //   Get.updateLocale(
                            //     const Locale('en', 'US'),
                            //   );
                            //   prefs.setBool("saveLanguage", true);
                            // }
                            print(
                                "Click Button : ............... ${prefs.getBool("saveLanguage")}");
                          },
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          child: const Text("English"),
                          onPressed: () {
                            prefs.setBool("saveLanguage", false);
                            Get.updateLocale(
                              const Locale('en', 'US'),
                            );
                            prefs.setString("savelan", "en");
                            print(
                                "Click Button : ............... ${prefs.getBool("saveLanguage")}");
                          },
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          child: const Text("Hindi"),
                          onPressed: () {
                            prefs.setBool("saveLanguage", false);
                            Get.updateLocale(
                              const Locale('hi', 'IN'),
                            );
                            prefs.setString("savelan", "hi");
                            print(
                                "Click Button : ............... ${prefs.getBool("saveLanguage")}");
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => SecondPage());
                      },
                      child: Text("go"),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => TestWidget());
                        Get.delete<HomeController>();
                      },
                      child: Text("Test"),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
