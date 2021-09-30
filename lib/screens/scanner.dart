import 'package:barcode_scan/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QrCodeScanncer extends StatefulWidget {
  const QrCodeScanncer({Key? key}) : super(key: key);

  @override
  _QrCodeScanncerState createState() => _QrCodeScanncerState();
}

class _QrCodeScanncerState extends State<QrCodeScanncer> {
  var barcode ="";
  @override
  void initState() {
    scan();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Text("$barcode")),
    );
  }

  Future scan() async{

    try{
      await BarcodeScanner.scan().then((value) => setState((){
        barcode =value.rawContent.toString();
      }));
    } on PlatformException catch(e){

    } on FormatException catch(e){

    }
  }
}