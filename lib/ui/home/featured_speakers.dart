import 'package:cached_network_image/cached_network_image.dart';
import 'package:droidconke2020_flutter/blocs/speakers/speakers_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/sessions/speaker_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/passport.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedSpeakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeakersBloc, SpeakersState>(
      builder: (context, state) {
        if (state is SpeakersStateLoaded) {
          var featuredSpeakers =
              (state.all.toList()..shuffle()).take(4).toList();

          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Speakers", style: Theme.of(context).textTheme.subhead),
                  Expanded(child: Container()),
                  Text.rich(
                    TextSpan(
                      text: "Veiw All",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          /* TODO: Go to Speakers page - doesn't exist in design? */
                        },
                    ),
                    style: TextStyle(color: Palette.purple, fontSize: 12),
                  ),
                  SizedBox(width: 10),
                  Chip(
                    label: Text(
                      "+${state.all.length - 4}",
                      style: TextStyle(
                        color: Palette.purple[200],
                        fontSize: 12,
                      ),
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
                  childAspectRatio: .65,
                ),
                itemCount: featuredSpeakers.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    key: ObjectKey(featuredSpeakers[index]),
                    child: Passport(
                      image: CachedNetworkImageProvider(
                        featuredSpeakers[index].avatar,
                        // key: Key(featuredSpeakers[index].avatar),
                      ),
                      subtitle: "${featuredSpeakers[index].name}",
                    ),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => SpeakerDetailScreen(
                          speaker: featuredSpeakers[index],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
