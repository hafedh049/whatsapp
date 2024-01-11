import 'package:flutter/material.dart';

class BezierCurve extends StatelessWidget {
  const BezierCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: CustomPaint(
        painter: Bezier(),
      ),
    );
  }
}

class Bezier extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // final Path path = Path()..addPath(path, offset);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
