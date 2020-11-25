import 'package:droidconke2020_flutter/blocs/schedule/schedule_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/session_list.dart';
import 'package:droidconke2020_flutter/ui/shared/button_group.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritedSessionsScreen extends StatelessWidget {
  static final String routeName = 'sessions';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                      'My Sessions',
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
                          'My Sessions',
                          style: Theme.of(context).textTheme.subhead.copyWith(
                                fontSize: 18,
                              ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: BlocBuilder<ScheduleBloc, ScheduleState>(
                          builder: (context, state) {
                            return ButtonGroup(
                              selectedIndex:
                                  state is ScheduleStateLoaded ? state.day : 0,
                              onSelectedIndexChanged: (val) {
                                BlocProvider.of<ScheduleBloc>(context).add(
                                  ScheduleEventSelectDay(val),
                                );
                              },
                            );
                          },
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                  Divider(color: Palette.purple),
                ],
              ),
            ),
            BlocBuilder<ScheduleBloc, ScheduleState>(builder: (context, state) {
              if (state is ScheduleStateError) {
                return Center(
                  child: Text(state.error.toString()),
                );
              }
              if (state is ScheduleStateLoaded) {
                return SessionList(
                  list: state.favorites.daySchedules.isNotEmpty
                      ? state.favorites.daySchedules[state.day].schedule
                      : [],
                );
              }
              return Center(child: CircularProgressIndicator());
            })
          ],
        ),
      ),
    );
  }
}
