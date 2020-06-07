import 'package:community_material_icon/community_material_icon.dart';
import 'package:droidconke2020_flutter/blocs/auth/auth_bloc.dart';
import 'package:droidconke2020_flutter/blocs/schedule/schedule_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/models/session.dart';
import 'package:droidconke2020_flutter/ui/auth/login_screen.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/session_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionCard extends StatelessWidget {
  final Session session;

  const SessionCard({Key key, this.session}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return SessionDetailScreen(session: session);
            },
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "${session.start_time}", //TODO: Convert to AM/PM
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "AM", //TODO: Convert to AM/PM
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.title,
                  ),
                ],
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(session.title,
                        style: Theme.of(context).textTheme.subhead),
                    Text(
                      session.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    Wrap(
                      children: <Widget>[
                        Text(
                          '${session.start_time ?? ''} - ${session.end_time ?? ''}', //TODO: Convert to AM/PM
                          style: Theme.of(context).textTheme.caption,
                        ),
                        VerticalDivider(
                          color: Theme.of(context).textTheme.caption.color,
                          thickness: 3,
                        ),
                        ...session.rooms
                            .map((r) => Wrap(
                                  children: <Widget>[
                                    Text(
                                      '${r.title ?? ''}',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                    SizedBox(width: 5),
                                  ],
                                ))
                            .toList()
                      ],
                    ),
                    SizedBox(height: 3),
                    Wrap(
                      children: (session.speakers ?? []).map((s) {
                        return Row(
                          children: <Widget>[
                            Icon(
                              CommunityMaterialIcons.android_head,
                              color: Theme.of(context).textTheme.overline.color,
                              size: 16,
                            ),
                            SizedBox(width: 3),
                            Text(
                              s.name,
                              style: Theme.of(context).textTheme.overline,
                            ),
                          ],
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              SizedBox(width: 20),
              BlocBuilder<ScheduleBloc, ScheduleState>(
                builder: (context, state) {
                  var isBookmarked = state is ScheduleStateLoaded &&
                      state.bookmarkList.contains(session);
                  return InkWell(
                    child: Afrikon(
                      isBookmarked ? 'star' : 'star-outline',
                      height: 24,
                      color: isBookmarked ? Palette.yellow : Palette.gray[100],
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
                },
              ),
            ],
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
