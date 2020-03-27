import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:droidconke2020_flutter/ui/shared/passport.dart';
import 'package:flutter/material.dart';

class PersonHeader extends StatelessWidget {
  final Color backgroundColor;
  final ImageProvider avatar;
  final String heroTag;
  final String name;
  final String shortBio;
  final Color avatarFrameColor;

  const PersonHeader({
    Key key,
    this.backgroundColor = Colors.transparent,
    @required this.avatar,
    this.heroTag = 'speaker-name',
    this.name,
    this.shortBio,
    this.avatarFrameColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: backgroundColor,
              image: DecorationImage(
                image: AssetImage('assets/images/Asset-1.png'),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                DroidconAppBar(),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Passport(
              image: avatar,
              size: 100,
              backgroundOpacity: 0.5,
              frameColor: avatarFrameColor ?? Palette.green,
            ),
          ),
          Positioned(
            top: 120,
            left: 140,
            right: 20,
            child: Hero(
              tag: heroTag,
              child: Text(
                "${name ?? ''}",
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),
          Positioned(
            top: 155,
            left: 140,
            right: 20,
            child: Text(
              "${shortBio ?? ''}",
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
