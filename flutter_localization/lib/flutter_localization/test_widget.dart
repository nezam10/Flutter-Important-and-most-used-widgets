import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization/home_page.dart';
import 'package:get/get.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Test"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => HomePage());
              },
              child: Text("Go to Home page"),
            ),
          ],
        ),
      ),
    );
  }
}
