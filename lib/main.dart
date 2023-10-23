// import 'package:currency_converter/currency_converter_page.dart';
import 'package:currency_converter/currency_converter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//3 types of widgets
//1) Stateless Widget
//2) Stateful Widget
//3) Inherited Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // return const Text("Hello", textDirection: TextDirection.ltr);
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
