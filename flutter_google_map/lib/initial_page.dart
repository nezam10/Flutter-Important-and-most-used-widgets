import 'package:flutter/material.dart';
import 'package:flutter_google_map/flutter_google_map/home_page.dart';
import 'package:flutter_google_map/flutter_google_map2/map_with_market.dart';
import 'package:flutter_google_map/google_map_search/google_map_search.dart';
import 'package:flutter_google_map/google_map_test/map_test1/map_screen.dart';
import 'package:get/get.dart';

import 'google_map_test/map_test1/location_controller.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(LocationController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Map"),
        backgroundColor: Colors.green[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text("Normal Map"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapWithMarket()),
                );
              },
              child: const Text("Map With Marker"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GoogleMapSearch()),
                );
              },
              child: const Text("Map With Marker"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()),
                );
              },
              child: const Text("Map With Marker"),
            ),
          ],
        ),
      ),
    );
  }
}
