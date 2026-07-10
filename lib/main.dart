import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const OwelaApp());
}

class OwelaApp extends StatelessWidget {
  const OwelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Owela Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomeScreen(),
    );
  }
}