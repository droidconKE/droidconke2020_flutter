import 'package:droidconke2020_flutter/ui/shared/person_header.dart';
import 'package:droidconke2020_flutter/ui/shared/twitter_handle.dart';
import 'package:droidconke2020_flutter/ui/shared/twitter_handle_copy.dart';
import 'package:flutter/material.dart';

class SpeakerDetailScreen extends StatelessWidget {
  static final String routeName = 'speaker-detail';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              PersonHeader(
                name: "Greg Fawson",
                shortBio: "COO/Chief Innovation Officer Droidcon Global",
                avatar: NetworkImage(
                  "https://sessionize.com/image?f=e5a4a871123344b5ae1b8a5aa36f3728,400,400,1,0,b1-61e5-4a26-9ca3-c9f30e3eaa08.3e7b5602-cf0d-4f47-b510-f789a00b4cbf.png",
                ),
              ),
              TwitterHandle(handle: "PriestTamzi"),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Bio", style: Theme.of(context).textTheme.subhead),
                    SizedBox(height: 20),
                    Text(
                      "Worked at Intel, co-Founded Moringa School, then started "
                      "@earlycamp to train young children from 5-16 on how "
                      "to solve problems with technology. Started 818interactive "
                      "to tell African stories with Games to a global audience. "
                      "Community wise I organize #Android & #Kotlin developers "
                      "every month for a meetUp to chat about technology. I Lead a cool team in organizing #droidConKE the largest android developer focussed event in Sub Saharan Africa. I train people,mentor them, build things, am highly experimental, read alot and socialize vertically.",
                    ),
                    SizedBox(height: 20),
                    TwitterHandleCopy(handle: 'Tamzi'),
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
