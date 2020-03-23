import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/models/session.dart';
import 'package:droidconke2020_flutter/ui/sessions/session_detail_screen.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final Session session;

  const SessionCard({Key key, this.session, favorited = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return SessionDetailScreen();
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
                    "10:00",
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "AM",
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
                    Text(session.description),
                    SizedBox(height: 5),
                    Row(
                      children: <Widget>[
                        Text(
                          '${session.description ?? ''} - ${session.description ?? ''}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        VerticalDivider(
                          color: Theme.of(context).textTheme.caption.color,
                          thickness: 3,
                        ),
                        Text(
                          '${session.description ?? ''}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Wrap(
                      children: (session.speakers ?? []).map((s) {
                        return Row(
                          children: <Widget>[
                            Icon(
                              Icons.android,
                              color: Theme.of(context).textTheme.overline.color,
                              size:
                                  Theme.of(context).textTheme.overline.fontSize,
                            ),
                            SizedBox(width: 3),
                            Text(s.name,
                                style: Theme.of(context).textTheme.overline),
                          ],
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                child: Icon(
                  Icons.star_border,
                  size: 32,
                  color: Palette.gray[100],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
