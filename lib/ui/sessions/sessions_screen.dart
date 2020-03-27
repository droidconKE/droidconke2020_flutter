import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/models/session.dart';
import 'package:droidconke2020_flutter/ui/sessions/session_list.dart';
import 'package:droidconke2020_flutter/ui/shared/button_group.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_switch.dart';
import 'package:flutter/material.dart';

class SessionsScreen extends StatelessWidget {
  static final String routeName = 'sessions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: DroidconAppBar(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ButtonGroup(
                        selectedIndex: 1,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              DroidconSwitch(
                                onChanged: (val) {},
                              ),
                              Text(
                                "My Sessions",
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
              SessionList(
                list: [
                  Session(
                    title: "Session 1",
                    description: "Description",
                    speakers: [
                      Speaker(name: 'Harun'),
                    ],
                    is_serviceSession: true,
                  ),
                  Session(
                    title: "Session Title",
                    description: "Description",
                    speakers: [
                      Speaker(name: 'Harun'),
                    ],
                  ),
                  Session(
                    title: "Session 2",
                    description: "Description",
                    speakers: [
                      Speaker(name: 'Harun'),
                    ],
                  ),
                  Session(
                    title: "Session 3",
                    description: "Description",
                    speakers: [
                      Speaker(name: 'Harun'),
                    ],
                  ),
                  Session(
                    title: "Session 3",
                    description: "Description",
                    speakers: [
                      Speaker(name: 'Harun'),
                    ],
                  ),
                  Session(
                    title: "Session 3",
                    description: "Description",
                    speakers: [
                      Speaker(name: 'Harun'),
                    ],
                  ),
                  Session(
                    title: "Session 5",
                    description: "Description",
                    speakers: [
                      Speaker(name: 'Harun'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
