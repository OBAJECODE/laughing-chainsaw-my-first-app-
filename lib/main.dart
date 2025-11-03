import 'package:flutter/material.dart';
import 'package:secondapp/pages/FRGTPASS.dart';

void main() {
  runApp(const secondapp());
}

class secondapp extends StatelessWidget {
  const secondapp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'e-Shopping',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 82, 82, 82),
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: ForgotPage(),
    );
  }
}
