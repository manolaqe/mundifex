import 'dart:math';

import 'package:flutter/material.dart';

class CurvedLinePainter extends CustomPainter {
  CurvedLinePainter({required this.progress});
  double progress;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final Paint progressPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    final double radius = size.height;
    final double center = size.width / 2;
    final double sweepAngle = pi * progress;

    print(progress);
    // Draw background arc
    canvas.drawArc(Rect.fromCircle(center: Offset(center, radius), radius: radius), pi, pi, false, paint);

    // Draw progress arc
    if (progress > 0) {
      canvas.drawArc(
        Rect.fromCircle(center: Offset(center, radius), radius: radius),
        pi,
        sweepAngle,
        false,
        progressPaint,
      );
    }
  }

  @override
  bool shouldRepaint(CurvedLinePainter oldDelegate) {
    return false;
  }
}
