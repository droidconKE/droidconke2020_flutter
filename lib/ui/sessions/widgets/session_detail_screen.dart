import 'package:community_material_icon/community_material_icon.dart';
import 'package:droidconke2020_flutter/blocs/auth/auth_bloc.dart';
import 'package:droidconke2020_flutter/blocs/schedule/schedule_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/ui/auth/login_screen.dart';
import 'package:droidconke2020_flutter/ui/sessions/speaker_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionDetailScreen extends StatelessWidget {
  static final String routeName = 'session-detail';
  final Session session;

  const SessionDetailScreen({Key key, @required this.session})
      : super(key: key);

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
                      style: Theme.of(context).textTheme.title,
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
                          "${session?.start_time} - ${session?.end_time}",
                          //TODO: Convert to AM/PM
                          style: Theme.of(context).textTheme.overline.copyWith(
                              color: Theme.of(context).textTheme.body1.color),
                        ),
                        Row(
                          children: <Widget>[
                            Afrikon(
                              'direction',
                              color: Palette.green,
                              height: 16,
                            ),
                            SizedBox(width: 5),
                            ...session.rooms
                                .map(
                                  (e) => Text(
                                    "${e.title}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .overline
                                        .copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .body1
                                                .color),
                                  ),
                                )
                                .toList()
                          ],
                        ),
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          child: Text(
                            '#BEGINNER',
                            style: Theme.of(context)
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
                    //TODO: Put session image
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
                          color: Theme.of(context).textTheme.caption.color,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Speaker(s)",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Expanded(child: Container()),
                        BlocBuilder<ScheduleBloc, ScheduleState>(
                            builder: (context, state) {
                          var isBookmarked = state is ScheduleStateLoaded &&
                              state.bookmarkList.contains(session);
                          return InkWell(
                            child: Afrikon(
                              isBookmarked ? 'star' : 'star-outline',
                              color: isBookmarked
                                  ? Palette.yellow
                                  : Theme.of(context).textTheme.bodyText1.color,
                            ),
                            onTap: () {
                              if (BlocProvider.of<AuthBloc>(context).state
                                  is AuthStateAuthenticated) {
                                _favorite(context);
                              } else {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(
                                        builder: (context) => LoginScreen()))
                                    .then((value) => _favorite(context));
                              }
                            },
                          );
                        }),
                      ],
                    ),
                    Wrap(
                      children: [
                        ...session.speakers.map((s) => Row(
                              children: <Widget>[
                                InkWell(
                                  child: Hero(
                                    tag: "${s.name}",
                                    child: Text(
                                      "${s.name}",
                                      style:
                                          Theme.of(context).textTheme.display1,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return SpeakerDetailScreen(speaker: s);
                                    }));
                                  },
                                ),
                                SizedBox(width: 20),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Description",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    SizedBox(height: 20),
                    Text("${session.description}"),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //TODO: Share Session
          },
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

  void _favorite(BuildContext context) {
    if (BlocProvider.of<AuthBloc>(context).state is AuthStateAuthenticated) {
      BlocProvider.of<ScheduleBloc>(context)
          .add(ScheduleEventToggleBookmark(session.id));
    }
  }
}
