import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Zikzaklı Çizgi'),
        ),
        body: Center(
          child: CustomPaint(
            size: Size(200, 100),
            painter: ZigzagPainter(),
          ),
        ),
      ),
    );
  }
}

class ZigzagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 4.0
      ..color = Colors.blue
      ..style = PaintingStyle.stroke;

    double centerX = size.width / 2;
    double centerY = size.height / 2;

    Path path = Path();

    for (int i = -10; i <= 10; i++) {
      double startX = centerX - 10.0;
      double startY = centerY + i * 5.0;

      double endX = centerX + 10.0;
      double endY = centerY + (i + 1) * 5.0;

      path.moveTo(startX, startY);
      path.lineTo(endX, endY);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
