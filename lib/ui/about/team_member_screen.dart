import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:droidconke2020_flutter/ui/shared/passport.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamMemberScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 220,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Palette.yellow,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Asset-1.png'),
                          alignment: Alignment.bottomCenter,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: DroidconAppBar(),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 20,
                      child: Passport(
                        image: NetworkImage(
                          "https://sessionize.com/image?f=e5a4a871123344b5ae1b8a5aa36f3728,400,400,1,0,b1-61e5-4a26-9ca3-c9f30e3eaa08.3e7b5602-cf0d-4f47-b510-f789a00b4cbf.png",
                        ),
                        size: 100,
                        backgroundOpacity: 0.5,
                        frameColor: Palette.yellow[800],
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 140,
                      child: Text(
                        "Frank Tamre",
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    Positioned(
                      top: 155,
                      left: 140,
                      right: 20,
                      child: Text(
                        "Kenya Partner Lead droidcon Berlin | Android | Kotlin | Flutter | C++",
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sponsorship Lead",
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          CommunityMaterialIcons.twitter,
                          color: Palette.green,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "PriestTamzi",
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .copyWith(color: Palette.purple),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    onTap: () async {
                      const url = 'https://twitter.com/PriestTamzi';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  SizedBox(height: 5),
                  Container(
                    color: Palette.green[900],
                    height: 1,
                    width: 100,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Bio", style: Theme.of(context).textTheme.subhead),
                    SizedBox(height: 20),
                    Text(
                        "Worked at Intel, co-Founded Moringa School, then started @earlycamp to train young children from 5-16 on how to solve problems with technology. Started 818interactive to tell African stories with Games to a global audience. Community wise I organize #Android & #Kotlin developers every month for a meetUp to chat about technology. I Lead a cool team in organizing #droidConKE the largest android developer focussed event in Sub Saharan Africa. I train people,mentor them, build things, am highly experimental, read alot and socialize vertically."),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Twitter Handle",
                              style: Theme.of(context)
                                  .textTheme
                                  .body1
                                  .copyWith(color: Palette.purple),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "PriestTamzi",
                                      style: Theme.of(context)
                                          .textTheme
                                          .body2
                                          .copyWith(color: Palette.green),
                                    ),
                                    InkWell(
                                      child: Icon(
                                        CommunityMaterialIcons.content_copy,
                                        color:
                                            Theme.of(context).textTheme.body1.color,
                                        size: 16,
                                      ),
                                      onTap: () {
                                        ClipboardManager.copyToClipBoard(
                                                "your text to copy")
                                            .then((result) {
                                          final snackBar = SnackBar(
                                            content: Text('Copied to Clipboard'),
                                            action: SnackBarAction(
                                              label: 'Undo',
                                              onPressed: () {
                                                // ClipboardManager.copyToClipBoard(null);
                                              },
                                            ),
                                          );
                                          _scaffoldKey.currentState
                                              .showSnackBar(snackBar);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 2),
                        Text("Tap to copy handle", style: Theme.of(context).textTheme.caption,)
                      ],
                    )
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
