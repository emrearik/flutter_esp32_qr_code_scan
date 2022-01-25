import 'package:flutter/material.dart';
import 'package:flutter_esp32/screens/qr_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  String surname = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter QR Code Scan'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'İsim',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value!.length < 3
                    ? "İsim kısmı 3 haneden büyük olmalıdır."
                    : null,
                onChanged: (value) => name = value,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Soyisim",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value!.length < 3
                    ? "Soyisim kısmı 3 haneden büyük olmalıdır."
                    : null,
                onChanged: (value) => surname = value,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QRPage(
                            name: name,
                            surname: surname,
                          ),
                        ),
                      );
                    }
                  });
                },
                child: Text("QR Oluştur"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
