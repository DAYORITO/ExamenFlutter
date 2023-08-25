import 'package:evaluacion1/screens/menu.dart';
import 'package:evaluacion1/themes/thememain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TemaBonito.temaBonito,
      home: const Menu(),
    );
  }
}
