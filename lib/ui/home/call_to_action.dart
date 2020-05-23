import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallToAction extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onTap;

  const CallToAction(
      {Key key, @required this.title, @required this.subtitle, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/Group-361.svg',
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              Afrikon(
                'play',
                color: Theme.of(context).primaryColor,
                height: 36,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Palette.purple[100],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
