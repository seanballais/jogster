import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

class TimeSetter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimeSetterState();
  }
}

class TimeSetterState extends State<TimeSetter> {
  int combIdx = 0;
  var combinations = [
    '1min/1min', '3min/1min', '5min/3min',
    '10min/3min', '15min/5min', '25min/7min', '30min/10min'
  ];

  void nextComb() {
    setState(() {
      combIdx = ++combIdx % combinations.length;
    });
  }

  void prevComb() {
    setState(() {
      combIdx = --combIdx % combinations.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SwipeDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              combinations[combIdx],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            ),
            Text(
              'Run/Walk',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21.0, color: Colors.white),
            ),
          ],
        ),
        onSwipeLeft: nextComb,
        onSwipeRight: prevComb,
      ),
    );
  }
}
