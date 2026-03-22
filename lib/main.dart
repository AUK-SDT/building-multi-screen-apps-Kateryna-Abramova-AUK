import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MonobankApp());
}

class MonobankApp extends StatelessWidget {
  const MonobankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monobank Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Roboto',
      ),
      home: const MonobankHomePage(title: "Monobank"),
    );
  }
}
