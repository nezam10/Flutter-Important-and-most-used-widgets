import 'package:flutter/material.dart';
import 'package:flutter_google_map/initial_page.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await DotEnv().load(fileName: 'apiKey.env');
  // final GoogleMapsFlutterPlatform mapsImplementation =
  //     GoogleMapsFlutterPlatform.instance;
  // if (mapsImplementation is GoogleMapsFlutterAndroid) {
  //   mapsImplementation.useAndroidViewSurface = true;
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialPage(),
    );
  }
}
