import 'package:droidconke2020_flutter/blocs/countdown_timer_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiver/async.dart';

class CountdownTimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var countdownTimerBloc = Provider.of<CountdownTimerBloc>(context);

    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * .6,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      decoration: BoxDecoration(
        color: Palette.green[100],
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Palette.green[900],
            offset: Offset(-2, -2),
            // blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
      ),
      child: StreamBuilder<Duration>(
          stream: countdownTimerBloc.countdown,
          initialData: Duration(seconds: 0),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var n = snapshot.data.inSeconds;
              int days = (n / (24 * 3600)).floor();

              n = n % (24 * 3600);
              int hours = (n / 3600).floor();

              n %= 3600;
              int minutes = (n / 60).floor();

              n %= 60;
              int seconds = n;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Afrikon(
                    'time',
                    color: Palette.green[900],
                    height: 20,
                  ),
                  if (days > 0)
                    TimerPeriod(
                      periodCount: days,
                      periodName: 'Days',
                    ),
                  TimerPeriod(
                    periodCount: hours,
                    periodName: 'Hours',
                  ),
                  TimerPeriod(
                    periodCount: minutes,
                    periodName: 'Minutes',
                  ),
                  if (days <= 0)
                    TimerPeriod(
                      periodCount: seconds,
                      periodName: 'Seconds',
                    ),
                ],
              );
            }
            return Container();
          }),
    );
  }
}

class TimerPeriod extends StatelessWidget {
  final int periodCount;
  final String periodName;

  const TimerPeriod(
      {Key key, @required this.periodCount, @required this.periodName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "$periodCount".padLeft(2, '0'),
          style: Theme.of(context).textTheme.subhead,
        ),
        Text(
          "$periodName",
          style: Theme.of(context).textTheme.overline,
        ),
      ],
    );
  }
}
