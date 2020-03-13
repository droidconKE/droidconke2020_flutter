import 'package:droidconke2020_flutter/ui/feed/feed_tile.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: DroidconAppBar(title: "Feed"),
              ),
              FeedTile(),
              FeedTile(),
              FeedTile(),
            ],
          ),
        ),
      ),
    );
  }
}
