import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Your main screen
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6D9D9),
      body: const Center(
        child: Text(
          "bev's reader",
          style: TextStyle(
              fontSize: 32.44,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            color: const Color(0xFF9EAD68),
          ),
        ),
      ),
    );
  }
}