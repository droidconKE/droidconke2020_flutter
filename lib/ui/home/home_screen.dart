import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/home/call_to_action.dart';
import 'package:droidconke2020_flutter/ui/home/featured_sessions.dart';
import 'package:droidconke2020_flutter/ui/home/featured_speakers.dart';
import 'package:droidconke2020_flutter/ui/home/keynote_speaker.dart';
import 'package:droidconke2020_flutter/ui/sessions/session_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    /*final theme = Provider.of<Brightness>(context);
    final themeBloc = Provider.of<ThemeBloc>(context);*/
    bool isBeforeEvent =
        DateTime.now().isBefore(Provider.of<DateTime>(context));

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: DroidconAppBar(
                  isHome: true,
                  isBeforeEvent: isBeforeEvent,
                ),
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
              /*FlatButton(
                child: Text("Toggle Theme"),
                onPressed: () {
                  themeBloc.changeBrightness(theme == Brightness.light
                      ? Brightness.dark
                      : Brightness.light);
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
