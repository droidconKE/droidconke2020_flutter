import 'package:droidconke2020_flutter/ui/shared/app_bar_feedback_button.dart';
import 'package:flutter/material.dart';

class DroidconAppBar extends StatelessWidget {
  final String title;
  final bool isHome;

  const DroidconAppBar({
    Key key,
    this.title,
    this.isHome = false,
  })  : assert(isHome || title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          "assets/images/logo.png",
          width: 27,
          height: 27,
        ),
        if (!isHome)
          Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        if(isHome)
          AppBarFeedbackButton(),
        InkWell(
          borderRadius: BorderRadius.circular(15),
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
