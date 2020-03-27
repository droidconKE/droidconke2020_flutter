import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const TextLink({
    Key key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: Theme.of(context).textTheme.body2.copyWith(
              color: Palette.purple,
              decoration: TextDecoration.underline,
            ),
      ),
      onTap: onTap,
    );
  }
}
