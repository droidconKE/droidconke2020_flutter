import 'package:droidconke2020_flutter/ui/shared/passport_photo.dart';
import 'package:droidconke2020_flutter/ui/shared/text_link.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class KeynoteSpeaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              "Keynote Speaker",
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 10),
            PassportPhoto(
              image: NetworkImage(
                  "https://sessionize.com/image?f=e5a4a871123344b5ae1b8a5aa36f3728,400,400,1,0,b1-61e5-4a26-9ca3-c9f30e3eaa08.3e7b5602-cf0d-4f47-b510-f789a00b4cbf.png"),
              imageFrameSize: 100,
              imageSize: 95,
            ),
            SizedBox(height: 10),
            Text(
              "Marcin Szalek",
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(height: 10),
            TextLink(
              text: "Become a speaker",
              onTap: () async {
                const url = 'https://sessionize.com/droidconke/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
