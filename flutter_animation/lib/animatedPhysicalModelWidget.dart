import 'package:flutter/material.dart';

class AnivatedPhysicalModelWidget extends StatefulWidget {
  const AnivatedPhysicalModelWidget({Key? key}) : super(key: key);

  @override
  State<AnivatedPhysicalModelWidget> createState() =>
      _AnivatedPhysicalModelWidgetState();
}

class _AnivatedPhysicalModelWidgetState
    extends State<AnivatedPhysicalModelWidget> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _isFlat ? 0 : 16.0,
              color: Colors.white,
              shadowColor: Colors.black,
              duration: const Duration(milliseconds: 500),
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.shop_two_sharp),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
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
