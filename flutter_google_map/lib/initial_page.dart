import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_map/flutter_google_map/home_page.dart';
import 'package:flutter_google_map/flutter_google_map2/map_with_market.dart';
import 'package:flutter_google_map/google_map_search/google_map_search.dart';
import 'package:flutter_google_map/google_map_test/map_test1/map_screen.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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
      body: SingleChildScrollView(
        child: Center(
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
              const SizedBox(height: 20),
              const Text("Base64 to image"),
              InkWell(
                onTap: () {
                  print("image path $base64ImageUrl");
                  String test = base64Encode(base64ImageUrl);
                  print("test path $test");
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.memory(base64ImageUrl),
                ),
              ),
              const SizedBox(height: 20),
              const Text("image to Base64"),
              showimage != null
                  ? InkWell(
                      onTap: () => print("image to base64 : $showimage"),
                      child: Container(
                          height: 100,
                          width: 100,
                          child: Image.memory(showimage)),
                    )
                  : const Text("image"),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  picImage();
                  print("path ====== $image");
                },
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(60),
                    // image: DecorationImage(
                    //     image: AssetImage('assets/gallery.png'),
                    //     fit: BoxFit.cover),
                  ),
                  child: image != null
                      ? ClipOval(
                          child: Image.file(image!,
                              width: 120, height: 120, fit: BoxFit.cover),
                        )
                      : Center(child: const Text("")),
                ),
              ),
              TextFormField(
                controller: textEditingController,
              ),
              const SizedBox(height: 10),
              Text(test5.toString()),
            ],
          ),
        ),
      ),
    );
  }

  var showimage;

  var test5;
  TextEditingController textEditingController = TextEditingController();
  File? image;
  Future picImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
        print("succ ====== ${image.name}");
        final bytes = File(image.path).readAsBytesSync();

        print("image path>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ${image.path}");

        print("path ========>>>>>>> $bytes");

        String img64 = base64Encode(bytes);
        print("object $img64");
        debugPrint("path =====:$img64");
        test5 = img64;
        textEditingController.text = test5;
        showimage = base64Decode(img64);
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

//   String imagepath = " /data/user/img.jpg";
// //image path, you can get it with image_picker package

// File imagefile = File(imagepath); //convert Path to File
// Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
// String base64string = base64.encode(imagebytes); //convert bytes to base64 string
// print(base64string);

  Uint8List base64ImageUrl = base64.decode(
      "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");
}
