// import 'package:flutter/material.dart';

// class TestScreen extends StatelessWidget {
//   final base64toimage;
//   final imagetobase64;
//   const TestScreen({
//     super.key,
//     this.base64toimage,
//     this.imagetobase64,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Test"),
//       ),
//       body: Column(
//         children: [
//           Text("Base64 to convert image"),
//           base64toimage != null
//               ? Container(
//                   height: 150,
//                   width: 150,
//                   child: Image.memory(base64toimage),
//                 )
//               : Text("image not found"),
//           Text("image to convert Base64"),
//           imagetobase64 != null
//               ? Container(
//                   height: 150,
//                   width: 150,
//                   child: Image.memory(imagetobase64),
//                 )
//               : Text("image not found")
//         ],
//       ),
//     );
//   }
// }
