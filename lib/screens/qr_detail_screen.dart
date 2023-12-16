import 'package:flutter/material.dart';
import 'package:qr_code_app/data/model/qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrDetailScreen extends StatelessWidget {
  const QrDetailScreen({super.key, required this.qrCode});
  final Qr qrCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(qrCode.title ?? 'Untitled'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 4.5,
                    vertical: 100),
                child: QrImageView(
                  data: qrCode.data,
                  eyeStyle: const QrEyeStyle(
                    eyeShape: QrEyeShape.square,
                    color: Colors.black,
                  ),
                  dataModuleStyle: const QrDataModuleStyle(
                    color: Colors.black,
                    dataModuleShape: QrDataModuleShape.square,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  qrCode.data,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
