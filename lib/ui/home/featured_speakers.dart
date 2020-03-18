import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/passport.dart';
import 'package:flutter/material.dart';

class FeaturedSpeakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("Speakers", style: Theme.of(context).textTheme.subhead),
            Expanded(child: Container()),
            Text(
              "Veiw All",
              style: TextStyle(color: Palette.purple, fontSize: 12),
            ),
            SizedBox(width: 10),
            Chip(
              label: Text(
                "+45",
                style: TextStyle(color: Palette.purple[200], fontSize: 12),
              ),
              backgroundColor: Palette.purple[50],
            ),
          ],
        ),
        GridView.builder(
          shrinkWrap: true,
          primary: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .7,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Passport(
              image: NetworkImage(
                  "https://sessionize.com/image?f=e5a4a871123344b5ae1b8a5aa36f3728,400,400,1,0,b1-61e5-4a26-9ca3-c9f30e3eaa08.3e7b5602-cf0d-4f47-b510-f789a00b4cbf.png"),
            subtitle: "Name that's long kabisa",
            );
          },
        ),
      ],
    );
  }
}
