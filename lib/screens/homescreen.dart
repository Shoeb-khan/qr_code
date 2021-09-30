import 'package:flutter/material.dart';
import 'package:qr_code/screens/qr_generator.dart';
import 'package:qr_code/screens/scanner.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr Code Scanner"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)
            =>
                QrCodeGenerator()
            ));
          },
              child: Text("Generate QR Code")),

          ElevatedButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)
            =>
                QrCodeScanncer()
            ));
          },
              child: Text("Scan QR Code")),

        ],
      ),
    );
  }
}
