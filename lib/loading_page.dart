import 'dart:ui' as ui;
import 'package:flutter/material.dart';

// This widget represents your splash/loading screen
class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBC0A6),
      body: Stack(
        children: [
          Positioned(
            top: 352,
            left: 57,
            child: _BlurredCircle(color: Colors.white.withOpacity(0.6), radius: 70),
          ),
          Positioned(
            top: 292,
            left: 211,
            child: _BlurredCircle(color: Colors.white.withOpacity(0.6), radius: 90),
          ),
          Positioned(
            top: 507,
            left: 190,
            child: _BlurredCircle(color: Colors.white.withOpacity(0.6), radius: 69),
          ),
          Center(
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
        ],
      ),
    );
  }
}

class _BlurredCircle extends StatelessWidget {
  final Color color;
  final double radius;

  const _BlurredCircle({required this.color, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: BackdropFilter(
        // Adjust SigmaX/Y to increase or decrease the blur intensity
        filter: ui.ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
        child: Container(color: Colors.transparent),
      ),
    );
  }
}