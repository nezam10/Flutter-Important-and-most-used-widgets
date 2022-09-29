import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization/controller.dart';
import 'package:get/get.dart';

import '../main.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello : ${prefs.getBool("saveLanguage")}",
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
