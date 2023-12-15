import 'package:flutter/material.dart';
import 'package:qr_code_app/data/model/qr_code.dart';
import 'package:qr_code_app/screens/main_screen.dart';
import 'package:qr_code_app/widgets/qr_list_item.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
