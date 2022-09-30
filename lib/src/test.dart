import 'package:flutter/material.dart';
class TestScreen extends StatefulWidget {
  TestScreen();
  @override
  State<StatefulWidget> createState() {
    return _TestScreen();
  }
}

class _TestScreen extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Center(
          child: Text("Test")
        )
      )
    );
  }
}


