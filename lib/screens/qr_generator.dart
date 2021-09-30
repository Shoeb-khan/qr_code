import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeGenerator extends StatefulWidget {
  const QrCodeGenerator({Key? key}) : super(key: key);

  @override
  _QrCodeGeneratorState createState() => _QrCodeGeneratorState();
}

class _QrCodeGeneratorState extends State<QrCodeGenerator> {
  var qrString = "";
  TextEditingController txtcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(

                    controller: txtcontroller,
                    decoration: InputDecoration(
                      hintText: "Enter Message",

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:(){
                  setState(() {
                    qrString = txtcontroller.text;
                  });
                }, child: Text("Generate QR")),
              )
            ],
          ),
          Expanded(flex: 3,
              child: Center(
            child: RepaintBoundary(
              child: QrImage(
                embeddedImage: AssetImage(''),
                data: qrString,
                size: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
