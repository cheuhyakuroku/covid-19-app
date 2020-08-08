import 'package:flutter/material.dart';

class HeaderPanter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill; // Change this to fill
    paint.color = Colors.white;
    var path = Path();
    path.moveTo(0, 50);
    path.quadraticBezierTo(0, 0, 75, 0);
    path.lineTo(size.width - 75, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 50);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
