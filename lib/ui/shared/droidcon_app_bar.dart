import 'package:community_material_icon/community_material_icon.dart';
import 'package:droidconke2020_flutter/ui/feedback/event_feedback_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:droidconke2020_flutter/ui/shared/app_bar_feedback_button.dart';
import 'package:droidconke2020_flutter/ui/shared/countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DroidconAppBar extends StatelessWidget {
  final String title;
  final bool isHome;
  final bool isBeforeEvent;

  const DroidconAppBar({
    Key key,
    this.title,
    this.isHome = false,
    this.isBeforeEvent = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        if (Navigator.of(context).canPop())
          InkWell(
            child: Afrikon('left'),
            onTap: () => Navigator.of(context).pop(),
          ),
        InkWell(
          child: Image.asset(
            "assets/images/logo.png",
            width: 27,
            height: 27,
          ),
          onTap: () {
            while (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
            Provider.of<CupertinoTabController>(context, listen: false).index = 0;
          },
        ),
        if (title != null)
          Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        if (isHome && isBeforeEvent) CountdownTimerWidget(),
        if (isHome && !isBeforeEvent)
          AppBarFeedbackButton(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return EventFeedbackScreen();
              }));
            },
          ),
        GestureDetector(
          // borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 28,
            width: 28,
            child: Afrikon(
              'man',
              color: Theme.of(context).primaryColor,
            ), // Afrikon("man", height: 21,),

            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(14)),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
