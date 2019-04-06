import 'package:flutter/material.dart';

class TimeSetter extends StatelessWidget {
  @override TimeSetter(
    {Key key, this.isRunning, this.combs, this.onChanged, this.dropValue}
  ) : super(key: key);

  final bool isRunning;
  final List<List<int>> combs;
  final ValueChanged<int> onChanged;
  final int dropValue;

  @override Widget build(BuildContext context) {
    List<Widget> widgets = [
      Text('Shake to start/stop.', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
    ];

    if (!isRunning) {
      widgets.insert(0, Padding(
        padding: EdgeInsets.all(20.0),
        child: DropdownButton<int>(
          value: dropValue,
          items: Iterable<int>.generate(combs.length).toList().map((idx) {
            var comb = combs[idx];
            return DropdownMenuItem<int>(
              value: idx,
              child: Text('${comb[0]}min run/${comb[1]}min walk', textAlign: TextAlign.center)
            );
          }).toList(),
          onChanged: (val) { onChanged(val); },
          isExpanded: true,
        )
      ));
    }

    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: widgets,
      ),
    );
  }
}
