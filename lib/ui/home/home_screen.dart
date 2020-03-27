import 'package:droidconke2020_flutter/blocs/countdown_timer_bloc.dart';
import 'package:droidconke2020_flutter/blocs/theme_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/home/call_to_action.dart';
import 'package:droidconke2020_flutter/ui/home/featured_sessions.dart';
import 'package:droidconke2020_flutter/ui/home/featured_speakers.dart';
import 'package:droidconke2020_flutter/ui/home/keynote_speaker.dart';
import 'package:droidconke2020_flutter/ui/sessions/session_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  static final String routeName = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<Brightness>(context);
    final themeBloc = Provider.of<ThemeBloc>(context);
    final countdownTimerBloc = Provider.of<CountdownTimerBloc>(context);

    return Scaffold(
      body: StreamBuilder<bool>(
        stream: countdownTimerBloc.isElapsed,
        initialData: false,
        builder: (context, snapshot) {
          var isBeforeEvent = !snapshot.data;
          if(!snapshot.hasData)
            return Container();
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                DroidconAppBar(
                  isHome: true,
                  isBeforeEvent: isBeforeEvent,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Palette.green[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 145,
                        decoration: BoxDecoration(
                          color: Palette.green[100],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/Asset-1.png'),
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.fitWidth,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Palette.green[200],
                              blurRadius: 0.5,
                              spreadRadius: 0.5,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                if (isBeforeEvent)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: CallToAction(
                      title: "Call for Speakers",
                      subtitle: "Apply to be a speaker.",
                      onTap: () async {
                        const url = 'https://sessionize.com/droidconke/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(color: Palette.purple[100]),
                ),
                if (isBeforeEvent) KeynoteSpeaker(),
                if (!isBeforeEvent)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: CallToAction(
                      title: "Today's sessions",
                      subtitle: "View upcoming sessions.",
                      onTap: () => Provider.of<CupertinoTabController>(context, listen: false).index = 2,
                    ),
                  ),
                if (!isBeforeEvent)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FeaturedSessions(),
                  ),
                if (!isBeforeEvent)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FeaturedSpeakers(),
                  ),
                FlatButton(
                  child: Text("Toggle Theme"),
                  onPressed: () {
                    themeBloc.changeBrightness(theme == Brightness.light
                        ? Brightness.dark
                        : Brightness.light);
                  },
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
