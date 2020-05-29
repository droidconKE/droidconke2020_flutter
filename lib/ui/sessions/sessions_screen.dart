import 'package:droidconke2020_flutter/blocs/schedule/schedule_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/sessions/favorited_sessions_screen.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/session_list.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/sessions_filter.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:droidconke2020_flutter/ui/shared/button_group.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionsScreen extends StatefulWidget {
  static final String routeName = 'sessions';

  @override
  _SessionsScreenState createState() => _SessionsScreenState();
}

class _SessionsScreenState extends State<SessionsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    BlocProvider.of<ScheduleBloc>(context).add(ScheduleEventFetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DroidconAppBar(
              logoHeroTag: 'sessions-logo',
              trailing: GestureDetector(
                onTap: () {
                  showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    transitionDuration: Duration(milliseconds: 500),
                    barrierLabel: MaterialLocalizations.of(context).dialogLabel,
                    barrierColor: Colors.black.withOpacity(0.5),
                    pageBuilder: (context, _, __) => SessionsFilter(),
                    transitionBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return SlideTransition(
                        position: CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeOut,
                        ).drive(Tween<Offset>(
                          begin: Offset(0, -1.0),
                          end: Offset.zero,
                        )),
                        child: child,
                      );
                    },
                  ).then((value) => print(value));
                },
                child: Row(
                  children: <Widget>[
                    Text(
                      'Filter',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 16,
                        color: Palette.gray,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 5),
                    Afrikon(
                      'filter-outline',
                      color: Palette.purple,
                      height: Theme.of(context).textTheme.subhead.fontSize,
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
                        child: BlocBuilder<ScheduleBloc, ScheduleState>(
                          builder: (context, state) {
                            return ButtonGroup(
                              selectedIndex:
                                  state is ScheduleStateLoaded ? state.day : 0,
                              onSelectedIndexChanged: (val) {
                                BlocProvider.of<ScheduleBloc>(context)
                                    .add(ScheduleEventSelectDay(val));
                              },
                            );
                          },
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Hero(
                              tag: 'sessions-switch',
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  DroidconSwitch(
                                    onChanged: (val) {
                                      Navigator.of(context).push(
                                        /*MaterialPageRoute(
                                          builder: (context) =>
                                              FavoritedSessionsScreen(),
                                        ),*/
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation1,
                                              animation2) {
                                            return FavoritedSessionsScreen();
                                          },
                                          transitionsBuilder: (context,
                                              animation1, animation2, child) {
                                            return FadeTransition(
                                              opacity: animation1,
                                              child: child,
                                            );
                                          },
                                          transitionDuration:
                                              Duration(milliseconds: 300),
                                        ),
                                      );
                                    },
                                  ),
                                  Text(
                                    "My Sessions",
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                  Divider(color: Palette.purple),
                ],
              ),
            ),
            BlocBuilder<ScheduleBloc, ScheduleState>(
              builder: (context, state) {
                if (state is ScheduleStateError) {
                  return Center(
                    child: Text(state.error.toString()),
                  );
                }
                if (state is ScheduleStateLoaded)
                  return SessionList(
                    list: state.schedule.daySchedules[state.day].schedule,
                  );
                return Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
