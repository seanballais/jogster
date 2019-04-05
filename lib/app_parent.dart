import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';
import 'dart:async';

import 'timer_counter.dart';
import 'time_setter.dart';
import 'run_button.dart';

class AppParent extends StatefulWidget {
  @override
  AppParentState createState() => AppParentState();
}

class AppParentState extends State<AppParent> with SingleTickerProviderStateMixin {
  bool _isRunning = false;
  bool _isRunCycle = false;
  int combIdx = 0;
  var combinations = [[1, 1], [3, 1], [5, 3], [10, 3], [15, 5], [25, 7], [30, 10]];

  Timer _timer;
  int _timeLeft;

  AnimationController _animController;
  Animation _colorTween;

  @override
  void initState() {
    _animController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10)
    );
    _colorTween = ColorTween(begin: Color(0xFFFFF748), end: Color(0xFF3C1A5B))
      .animate(_animController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorTween,
      builder: (context, child) => Scaffold(
        backgroundColor: _colorTween.value,
        body: Center(
          child: SwipeDetector(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TimerCounter(timeLeft: _timeLeft),
                  TimeSetter(isRunning: _isRunning, time: combinations[combIdx]),
                  RunButton(isRunning: _isRunning, onChanged: _handleRunBtnChanged),
                ],
              ),
            ),
            onSwipeLeft: _nextComb,
            onSwipeRight: _prevComb,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = new Timer.periodic(const Duration(seconds: 1), (Timer t) => setState(() {
        if (_timeLeft == 0) {
          _isRunCycle = !_isRunCycle;
          _timeLeft = combinations[combIdx][_isRunCycle ? 1 : 0] * 60;
          _animController.duration = new Duration(seconds: _timeLeft);

          if (_isRunCycle) {
            _animController.forward();
          } else {
            _animController.reverse();
          }
        } else {
          _timeLeft--;
        }
      })
    );
  }

  void _nextComb() {
    setState(() {
      if (!_isRunning) combIdx = ++combIdx % combinations.length;
    });
  }

  void _prevComb() {
    setState(() {
      if (!_isRunning) combIdx = --combIdx % combinations.length;
    });
  }

  void _handleRunBtnChanged(bool val) {
    setState(() {
      _isRunning = val;
      if (_isRunning) {
        _isRunCycle = true;
        _timeLeft = combinations[combIdx][0] * 60;
        _animController.duration = new Duration(seconds: _timeLeft);
        _animController.forward();
        startTimer();
      } else {
        _timer.cancel();
        _animController.reset();
        _animController.stop();
      }
    });
  }
}

