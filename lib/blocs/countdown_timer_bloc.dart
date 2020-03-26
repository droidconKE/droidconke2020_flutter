import 'package:quiver/async.dart';
import 'package:rxdart/rxdart.dart';

class CountdownTimerBloc {
  Stream<CountdownTimer> get countdown => _countdownTimer;
  BehaviorSubject<bool> _isElapsed = BehaviorSubject<bool>();
  Stream<CountdownTimer> _countdownTimer;

  Stream<bool> get isElapsed => _isElapsed.stream;

  CountdownTimerBloc() {
    var now = DateTime.now();
    var eventDate = DateTime(2020, 8, 6, 8, 0, 0); // TODO: Move event date to config file
    // var eventDate = DateTime(2020, 3, 26, 20, 16, 0);
    var difference = eventDate.difference(now);
    setCountdownElapsed(difference.isNegative);
    _countdownTimer = CountdownTimer(difference, Duration(seconds: 1));
    _countdownTimer.listen((data){
      if(data.remaining.isNegative){
        print(data);
        setCountdownElapsed(true);
      }
    });
  }

  setCountdownElapsed(bool val) {
    _isElapsed.add(val);
  }

  dispose() {
    _isElapsed.close();
  }
}
