import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class CustomNeumorphismButton extends StatefulWidget {
  const CustomNeumorphismButton({Key? key}) : super(key: key);

  @override
  State<CustomNeumorphismButton> createState() =>
      _CustomNeumorphismButtonState();
}

class _CustomNeumorphismButtonState extends State<CustomNeumorphismButton> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xffe7ecdf);
    Offset distance = isPressed ? Offset(10, 10) : Offset(28, 28);
    double blur = isPressed ? 2.0 : 30.0;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30.0,
                      //offset: Offset(-28, -28),
                      offset: -distance,
                      color: Colors.white,
                      //inset: true,
                      inset: isPressed,
                    ),
                    BoxShadow(
                      //blurRadius: 30.0,
                      blurRadius: blur,
                      //offset: Offset(28, 28),
                      offset: distance,
                      color: Color(0xffa7a9af),
                      //inset: true,
                      inset: isPressed,
                    )
                  ]),
              child: SizedBox(height: 200, width: 200),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child: Text("Click"),
            )
          ],
        ),
      ),
    );
  }
}
