import 'package:droidconke2020_flutter/ui/feed/feed_tile.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  static final String routeName = 'feed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DroidconAppBar(title: "Feed"),
            FeedTile(),
            FeedTile(),
            FeedTile(),
          ],
        ),
      ),
    );
  }
}
