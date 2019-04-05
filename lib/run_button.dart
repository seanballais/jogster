import 'package:flutter/material.dart';

class RunButton extends StatelessWidget {
  RunButton({Key key, this.isRunning: false, @required this.onChanged})
    : super(key:key);

  final bool isRunning;
  final ValueChanged<bool> onChanged;

  void _handlePress() {
    onChanged(!isRunning);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: _handlePress,
          child: Text(isRunning ? 'Stop Jog' : 'Start Jog', style: TextStyle(fontSize: 24.0)),
          elevation: 3.0,
        ),
      ),
    );
  }
}

