import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization/controller.dart';
import 'package:flutter_localization/flutter_localization/home_page.dart';
import 'package:flutter_localization/flutter_localization/language.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  if (prefs.getBool("saveLanguage") == null) {
    print("main method");
    prefs.setBool("saveLanguage", false);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(" getMaterialApp >>>>>>>>>>>>>${prefs.getBool("saveLanguage")}");
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: prefs.getBool("saveLanguage") == true
          ? const Locale('bn', 'BD')
          : const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
