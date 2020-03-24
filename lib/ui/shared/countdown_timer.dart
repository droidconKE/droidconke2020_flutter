import 'package:community_material_icon/community_material_icon.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/material.dart';

class CountdownTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // width: 50,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Afrikon(
            'time',
            color: Palette.green[900],
            height: 20,
          ),
          SizedBox(width: 30),
          TimerPeriod(
            periodCount: 10,
            periodName: 'Days',
          ),
          SizedBox(width: 30),
          TimerPeriod(
            periodCount: 10,
            periodName: 'Hours',
          ),
          SizedBox(width: 30),
          TimerPeriod(
            periodCount: 9,
            periodName: 'Minutes',
          ),
        ],
      ),
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
