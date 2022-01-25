import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRPage extends StatelessWidget {
  final String name;
  final String surname;
  const QRPage({Key? key, required this.name, required this.surname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String data = name + "_" + surname;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("QR Kodunuz"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: QrImage(
              data: data,
              size: 300,
            ),
          ),
          SizedBox(height: 20),
          Text("QR DATA: " + data),
        ],
      ),
    );
  }
}
