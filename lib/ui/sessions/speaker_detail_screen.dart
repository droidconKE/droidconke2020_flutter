import 'package:cached_network_image/cached_network_image.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/ui/shared/person_header.dart';
import 'package:droidconke2020_flutter/ui/shared/twitter_handle.dart';
import 'package:droidconke2020_flutter/ui/shared/twitter_handle_copy.dart';
import 'package:flutter/material.dart';

class SpeakerDetailScreen extends StatelessWidget {
  static final String routeName = 'speaker-detail';

  final Speaker speaker;

  const SpeakerDetailScreen({Key key, @required this.speaker})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              PersonHeader(
                name: "${speaker.name}",
                shortBio: "${speaker.tagline ?? ''}",
                avatar: CachedNetworkImageProvider("${speaker.avatar}"),
              ),
              TwitterHandle(handle: "${speaker.twitter ?? ''}"), //TODO: Get handle only from twitter link
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Bio", style: Theme.of(context).textTheme.subhead),
                    SizedBox(height: 20),
                    Text("${speaker.biography ?? ''}"),
                    SizedBox(height: 20),
                    TwitterHandleCopy(handle: '${speaker.twitter ?? ''}'), //TODO: Get handle only from twitter link
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
