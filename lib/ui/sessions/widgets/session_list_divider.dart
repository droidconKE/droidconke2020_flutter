import 'package:flutter/material.dart';

class SessionListDivider extends StatelessWidget {
  final MaterialColor color;

  const SessionListDivider({Key key, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // color: Colors.red,
      padding: EdgeInsets.only(left: 60),
      alignment: Alignment.centerLeft,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 20,
            width: 1,
            color: color[200],
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
