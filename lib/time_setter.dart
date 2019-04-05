import 'package:flutter/material.dart';

class TimeSetter extends StatelessWidget {
  @override
  TimeSetter({Key key, @required this.isRunning, @required this.time})
    : super(key: key);

  final bool isRunning;
  final List<int> time;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: !isRunning ? <Widget>[
          Text('${time[0]}min/${time[1]}s', textAlign: TextAlign.center, style: TextStyle(fontSize: 40.0)),
          Text('Run/Walk', textAlign: TextAlign.center, style: TextStyle(fontSize: 21.0)),
          Text('Swipe left/right to change the time interval.', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ] : <Widget>[],
      ),
    );
  }
}
