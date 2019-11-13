import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class ScanSreen extends StatefulWidget {
  @override
  _ScanSreenState createState() => _ScanSreenState();
}

class _ScanSreenState extends State<ScanSreen> {
  String qrcode = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => qrcode = barcode);
    } catch (e) {}
  }
}
