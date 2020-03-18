import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/home/featured_speakers.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*final theme = Provider.of<Brightness>(context);
    final themeBloc = Provider.of<ThemeBloc>(context);*/

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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Group-361.svg',
                          height: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Today's Session",
                              style: Theme.of(context).textTheme.subhead,
                            ),
                            Text(
                              "View upcoming sessions",
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: Theme.of(context).primaryColor,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Palette.purple[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(color: Palette.purple[100]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Text("Sessions", style: Theme.of(context).textTheme.subhead),
                    Expanded(child: Container()),
                    Text(
                      "Veiw All",
                      style: TextStyle(color: Palette.purple, fontSize: 12),
                    ),
                    SizedBox(width: 10),
                    Chip(
                      label: Text(
                        "+45",
                        style:
                            TextStyle(color: Palette.purple[200], fontSize: 12),
                      ),
                      backgroundColor: Palette.purple[50],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: Container(
                  height: 141,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      childAspectRatio: .8,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(5),
                        /*decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),*/
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 78,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/other.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        color: Palette.green,
                                        size: 10,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "10:30",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Icon(
                                        Icons.access_time,
                                        color: Palette.green,
                                        size: 10,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Room 1",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Text here",
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
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
