import 'package:flutter/material.dart';
import 'package:whatsapp/utils/shared.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.6983240);
    path_0.lineTo(size.width * 0.3757737, size.height * 0.6983240);
    path_0.quadraticBezierTo(size.width * 0.3978780, size.height * 0.6983240, size.width * 0.4067197, size.height * 1.047486);
    path_0.lineTo(size.width * 0.4155615, size.height * 1.256983);
    path_0.quadraticBezierTo(size.width * 0.4288240, size.height * 1.745810, size.width * 0.4995579, size.height * 1.675978);
    path_0.lineTo(0, size.height * 1.675978);
    path_0.lineTo(0, size.height * 0.6983240);
    path_0.lineTo(size.width * -0.3757737, size.height * 0.6983240);
    path_0.quadraticBezierTo(size.width * -0.3978780, size.height * 0.6983240, size.width * -0.4067197, size.height * 1.047486);
    path_0.lineTo(size.width * -0.4155615, size.height * 1.256983);
    path_0.quadraticBezierTo(size.width * -0.4288240, size.height * 1.745810, size.width * -0.4995579, size.height * 1.675978);
    path_0.lineTo(0, size.height * 1.675978);

    final Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = green;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
