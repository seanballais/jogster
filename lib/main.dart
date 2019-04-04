import 'package:flutter/material.dart';
import 'timer.dart';
import 'run_button.dart';
import 'time_setter.dart';

void main() => runApp(Jogster());

class Jogster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogster - A Run/Walk Cycle Timer',
      home: Scaffold(
        backgroundColor: Color(0x1A1A1A),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[Timer(), TimeSetter(), RunButton()],
            ),
          ),
        ),
      )
    );
  }
}
