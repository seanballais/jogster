import 'package:flutter/material.dart';

void main() => runApp(Jogster());

class Jogster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Jogster',
      home: Scaffold(
        backgroundColor: Color(0x062030FF),
        body: Center(
          child: SafeArea(
            child: Text('Hello from Jogster!')
          ),
        ),
      )
    );
  }
}
