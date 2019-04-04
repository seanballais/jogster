import 'package:flutter/material.dart';

class RunButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RunButtonState();
  }
}

class RunButtonState extends State<RunButton> {
  int txtIdx = 0;
  var btnTxt = ['Start Running', 'Stop Running'];

  void switchText() {
    setState(() {
      txtIdx = (++txtIdx) % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: RaisedButton(
          child: Text(
            btnTxt[txtIdx],
            style: TextStyle(fontSize: 24.0),
          ),
          elevation: 3.0,
          onPressed: switchText,
        ),
      ),
    );
  }
}

