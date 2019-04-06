import 'package:flutter/material.dart';

class TimeSetter extends StatelessWidget {
  @override TimeSetter({Key key, this.isRunning, this.combs, this.onChanged, this.dropValue}) : super(key: key);

  final bool isRunning;
  final List<List<int>> combs;
  final ValueChanged<int> onChanged;
  final int dropValue;

  @override Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: !isRunning ? <Widget>[
          DropdownButton<int>(
            value: dropValue,
            items: Iterable<int>.generate(combs.length).toList().map((idx) {
              var comb = combs[idx];
              return new DropdownMenuItem<int>(
                value: idx,
                child: Text('${comb[0]}min/${comb[1]}min', textAlign: TextAlign.center)
              );
            }).toList(),
            onChanged: (val) { onChanged(val); },
            isExpanded: true,
          ),
          Text('Shake to start/stop.', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ] : <Widget>[],
      ),
    );
  }
}
