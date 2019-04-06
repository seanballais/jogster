import 'package:flutter/material.dart';
import 'app_parent.dart';

void main() => runApp(Jogster());

class Jogster extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(title: 'Jogster - A Run/Walk Cycle Timer', home: AppParent());
  }
}
