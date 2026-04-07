import 'package:flutter/material.dart';
import 'loading_page.dart';

void main() {
  runApp(const MyApp());
}

// Root of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoadingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}