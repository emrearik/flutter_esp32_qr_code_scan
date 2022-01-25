import 'package:flutter/material.dart';
import 'package:flutter_esp32/screens/home_page.dart';

void main() {
  runApp(const FlutterESP32App());
}

class FlutterESP32App extends StatelessWidget {
  const FlutterESP32App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
