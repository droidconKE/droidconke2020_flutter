import 'package:droidconke2020_flutter/ui/shared/app_bar_feedback_button.dart';
import 'package:droidconke2020_flutter/ui/shared/countdown_timer.dart';
import 'package:flutter/material.dart';

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
            // child: Afrikon("left"), // FIXME: Afrikon not working
            child: Icon(Icons.arrow_back),
            onTap: () => Navigator.of(context).pop(),
          ),
        Image.asset(
          "assets/images/logo.png",
          width: 27,
          height: 27,
        ),
        if (title != null)
          Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        if (isHome && isBeforeEvent) CountdownTimer(),
        if (isHome && !isBeforeEvent)
          AppBarFeedbackButton(
            onTap: () {},
          ),
        GestureDetector(
          // borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 28,
            width: 28,

            child: Icon(
              Icons.account_circle,
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
