import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimerState();
  }
}

class TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: CustomPaint(
        painter: ShapesPainter(),
        child: Container(),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.deepOrange;

    var center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 75.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter odDelegate) {
    return null;
  }
}
