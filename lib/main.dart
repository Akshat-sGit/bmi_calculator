import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(0, 255, 255, 255),
            secondary: const Color(0xFF91FCDC)),
        scaffoldBackgroundColor:const Color.fromARGB(255, 55, 100, 55),
      ),
      home: const InputPage(),
    );
  }
}
