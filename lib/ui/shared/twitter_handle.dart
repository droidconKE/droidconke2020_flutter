import 'package:community_material_icon/community_material_icon.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TwitterHandle extends StatelessWidget {
  final String handle;

  const TwitterHandle({
    Key key,
    @required this.handle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(
            CommunityMaterialIcons.twitter,
            color: Palette.green,
            size: 16,
          ),
          SizedBox(width: 5),
          Text(
            "$handle",
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(color: Palette.purple),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      onTap: () async {
        var url = "https://twitter.com/$handle";
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
