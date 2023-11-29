import 'dart:math';
import 'package:flutter/material.dart';

class VerticalWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(),
      child: Container(
        height: 200.0, // Adjust the height of the wave
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final double waveHeight = 20.0;
    final double waveFrequency = 0.05;
    final double waveAmplitude = 10.0;

    final Path path = Path();
    path.moveTo(0, size.height);

    for (double i = 0; i < size.width; i++) {
      final double y = sin((i * waveFrequency) * 2 * pi) * waveAmplitude;
      path.lineTo(i, size.height - y);
    }

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
