import 'package:flutter/foundation.dart';
import 'package:quiver/async.dart';
import 'package:rxdart/rxdart.dart';

class CountdownTimerBloc {
  BehaviorSubject<Duration> _countdown = BehaviorSubject<Duration>();
  BehaviorSubject<bool> _isElapsed = BehaviorSubject<bool>();
  DateTime eventStart;

  Stream<Duration> get countdown => _countdown.stream;

  Stream<bool> get isElapsed => _isElapsed.stream;

  CountdownTimerBloc({@required this.eventStart}) {
    var timeToGo = eventStart.difference(DateTime.now());
    _countdown.sink.add(timeToGo);
    setCountdownElapsed(timeToGo.isNegative);
    var _countdownTimer =
        CountdownTimer(timeToGo, Duration(seconds: 1)).doOnDone(() {
      setCountdownElapsed(true);
    });
    _countdown.sink.addStream(
        _countdownTimer.map((countdownTimer) => countdownTimer.remaining));
  }

  setCountdownElapsed(bool val) => _isElapsed.add(val);

  dispose() {
    _isElapsed.close();
    _countdown.close();
  }
}
