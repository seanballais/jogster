import 'package:flutter/material.dart';

class TimerCounter extends StatelessWidget {
  @override TimerCounter({Key key, this.timeLeft}) : super(key: key);

  final int timeLeft;

  @override Widget build(BuildContext context) {
    String minutes = (timeLeft ~/ 60).toString().padLeft(2, '0');
    String seconds = (timeLeft % 60).toString().padLeft(2, '0');

    return Expanded(
      flex: 4,
      child: Center(
        child: Text('$minutes:$seconds', textAlign: TextAlign.center, style: TextStyle(fontSize: 90.0, fontWeight: FontWeight.w100)),
      ),
    );
  }
}
