import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarFeedbackButton extends StatelessWidget {
  final Function onTap;

  const AppBarFeedbackButton({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 7),
        height: 30,
        // width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          color: Palette.purple[100],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Afrikon(
              'smiley-outline',
              color: Palette.purple,
              height: 20,
            ),
            SizedBox(width: 30),
            Text(
              'Feedback',
              style: GoogleFonts.robotoSlab(
                color: Palette.purple,
                fontSize: 16,
              ),
            ),
            SizedBox(width: 30),
            Afrikon(
              'send',
              color: Palette.purple,
              height: 20,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
