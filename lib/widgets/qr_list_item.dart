import 'package:flutter/material.dart';
import 'package:qr_code_app/data/model/qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrListItem extends StatelessWidget {
  const QrListItem({super.key, required this.qrCode});
  final Qr qrCode;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width / 100 * 40,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: QrImageView(
              data: qrCode.data,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  qrCode.title ?? 'Untitled',
                  style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                ),
                Text(
                  qrCode.data,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
