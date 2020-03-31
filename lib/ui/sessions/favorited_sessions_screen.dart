import 'package:droidconke2020_flutter/blocs/sessions_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/models/session.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/session_list.dart';
import 'package:droidconke2020_flutter/ui/shared/button_group.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritedSessionsScreen extends StatelessWidget {
  static final String routeName = 'sessions';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final sessionsBloc = Provider.of<SessionsBloc>(context);

    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DroidconAppBar(
              logoHeroTag: 'sessions-logo',
              trailing: Hero(
                tag: 'sessions-switch',
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    DroidconSwitch(
                      value: true,
                      onChanged: (val) {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      "My Sessions",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "My Sessions",
                          style: Theme.of(context).textTheme.subhead.copyWith(
                                fontSize: 18,
                              ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: StreamBuilder<int>(
                            stream: sessionsBloc.favoritesSelectedDay,
                            initialData: 0,
                            builder: (context, snapshot) {
                              return ButtonGroup(
                                selectedIndex: snapshot.data,
                                onSelectedIndexChanged: (val) {
                                  sessionsBloc.setFavoritesSelectedDay(val);
                                },
                              );
                            }),
                        flex: 1,
                      ),
                    ],
                  ),
                  Divider(color: Palette.purple),
                ],
              ),
            ),
            StreamBuilder<List<Session>>(
              stream: sessionsBloc.favoriteSessions,
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return SessionList(
                    list: snapshot.data,
                  );
                return LinearProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
