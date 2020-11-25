import 'package:cached_network_image/cached_network_image.dart';
import 'package:droidconke2020_flutter/ui/about/team_member_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/passport.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static final String routeName = 'about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    "https://techweez.com/wp-content/uploads/2019/08/DroidconKE-2019-1365x1024.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "About",
                    style: Theme.of(context).textTheme.title,
                    // textAlign: TextAlign.start,
                  ),
                  Text(
                    "Droidcon is a global conference focused on the engineering of Android applications. "
                    "Droidcon provides a forum for developers to network with other developers, share techniques, announce apps and products, and to learn and teach. "
                    "This two-day developer focused gathering will be held in Nairobi Kenya on August 6th to 8th 2020 and will be the largest of its kind in Africa. "
                    "It will have workshops and codelabs focused on the building of Android applications and will give participants an excellent chance to learn about "
                    "the local Android development ecosystem, opportunities and services as well as meet the engineers and companies who work on them.",
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Organizing Team",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ),
                  SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 5,
                        childAspectRatio: 0.6),
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => TeamMemberScreen(),
                          ),
                        ),
                        child: Passport(
                          image: CachedNetworkImageProvider(
                            "https://sessionize.com/image?f=e5a4a871123344b5ae1b8a5aa36f3728,400,400,1,0,b1-61e5-4a26-9ca3-c9f30e3eaa08.3e7b5602-cf0d-4f47-b510-f789a00b4cbf.png",
                          ),
                          title: "Name",
                          subtitle: "Description that is very very long",
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
