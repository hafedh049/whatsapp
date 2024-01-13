import 'package:flutter/material.dart';

class TanCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Move to the top-left corner
    path.moveTo(0, 20);

    // Bézier curve for the top-left corner
    path.cubicTo(1 * size.width, 0.11 * size.height, 0.23 * size.width, 0.69 * size.height, 0.5 * size.width, 0);

    // Line to the top-right corner
    path.lineTo(size.width * 0.5, 0);

    // Bézier curve for the top-right corner
    path.cubicTo(0.77 * size.width, 0.69 * size.height, size.width - 0.23 * size.width, 0.11 * size.height, size.width, 20);

    // Line to the bottom-right corner
    path.lineTo(size.width, size.height);

    // Line to the bottom-left corner
    path.lineTo(0, size.height);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
