import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:qr_code_app/data/model/qr_code.dart';
import 'package:qr_code_app/widgets/qr_list_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                spacing: MediaQuery.of(context).size.width / 100 * 4,
                runSpacing: 10,
                children: [
                  QrListItem(
                    qrCode: Qr(title: 'Test', data: 'This is a test!'),
                  ),
                  QrListItem(
                    qrCode: Qr(title: 'Test', data: 'This is a test!'),
                  ),
                  QrListItem(
                    qrCode: Qr(title: 'Test', data: 'This is a test!'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
