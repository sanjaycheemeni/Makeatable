import 'package:flutter/material.dart';
import 'package:makeatable/util/constants/color_constants.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../auth_module/widgets/snackbar.dart';

class ManagerQRScan extends StatefulWidget {
  const ManagerQRScan({super.key});

  @override
  State<ManagerQRScan> createState() => _ManagerQRScanState();
}

class _ManagerQRScanState extends State<ManagerQRScan> {
  Color main_clr = mRed;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? barcode;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(alignment: Alignment.center, children: [
          QRView(
            key: qrKey,
            onQRViewCreated: onQRViewCreated,
            overlay: QrScannerOverlayShape(
                borderColor: main_clr,
                borderLength: 40,
                borderWidth: 15,
                borderRadius: 8,
                cutOutSize: 300),
          ),
          Positioned(
            top: 100,
            child: Icon(
              Icons.qr_code,
              color: mRed,
              size: 50,
            ),
          ),
          Positioned(
              bottom: 100,
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color: mRed, borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Scan QR to Deliver order',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ))
        ]),
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });

    controller.scannedDataStream.listen((barcode) {
      if (this.mounted) {
        setState(() {
          this.barcode = barcode;
          snack_success(context: context);
        });
      }
    });
  }
}
