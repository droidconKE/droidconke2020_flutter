import 'package:community_material_icon/community_material_icon.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/sessions/speaker_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/material.dart';

class SessionDetailScreen extends StatelessWidget {
  static final String routeName = 'session-detail';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Asset-1.png'),
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.contain,
                        repeat: ImageRepeat.repeatX)),
                child: Column(
                  children: <Widget>[
                    DroidconAppBar(),
                    Text(
                      "Session Details",
                      style: Theme
                          .of(context)
                          .textTheme
                          .title,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "9:00AM - 9:30AM",
                          style: Theme
                              .of(context)
                              .textTheme
                              .overline
                              .copyWith(
                              color: Theme
                                  .of(context)
                                  .textTheme
                                  .body1
                                  .color),
                        ),
                        Row(
                          children: <Widget>[
                            Afrikon(
                              'direction',
                              color: Palette.green,
                              height: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "ROOM 1",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .overline
                                  .copyWith(
                                  color: Theme
                                      .of(context)
                                      .textTheme
                                      .body1
                                      .color),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          child: Text(
                            '#BEGINNER',
                            style: Theme
                                .of(context)
                                .textTheme
                                .overline
                                .copyWith(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Palette.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          CommunityMaterialIcons.android_head,
                          size: 14,
                          color: Theme
                              .of(context)
                              .textTheme
                              .caption
                              .color,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Speaker",
                          style: Theme
                              .of(context)
                              .textTheme
                              .caption,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Afrikon('star-outline'),
                      ],
                    ),
                    InkWell(
                      child: Hero(
                        tag: "speaker-name",
                        child: Text(
                          "Greg Fawson",
                          style: Theme
                              .of(context)
                              .textTheme
                              .display1,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return SpeakerDetailScreen();
                            }
                        ));
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Description",
                      style: Theme
                          .of(context)
                          .textTheme
                          .subhead,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Been in the tech industry for over 20 years. "
                          "Am passionate about developer communities, "
                          "motivating people and building successful",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          mini: true,
          child: Afrikon(
            'share',
            color: Palette.purple,
          ),
        ),
      ),
    );
  }
}
