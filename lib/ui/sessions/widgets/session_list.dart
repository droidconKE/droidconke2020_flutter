import 'dart:math';

import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/models/session.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/session_card.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/session_list_divider.dart';
import 'package:flutter/material.dart';

class SessionList extends StatelessWidget {
  final List<Session> list;

  const SessionList({Key key, this.list = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list
          .map((s) => Column(
                children: <Widget>[
                  SessionCard(session: s),
                  if (s != list.last)
                    SessionListDivider(
                        color: Palette
                            .colors[Random().nextInt(Palette.colors.length)])
                ],
              ))
          .toList(growable: false),
    );
  }

/*List<Widget> _buildList(){
    List<Widget> _list = [];
    for(var i = 0; i < list.length; i++) {
      _list.add(Column(
        children: <Widget>[
          SessionCard(session: list[i]),
          if (list[i] != list.last)
            SessionListDivider(color: Palette.colors[Random().nextInt(list.length)])
        ],
      ));
    }
    return _list;
  }*/
}
