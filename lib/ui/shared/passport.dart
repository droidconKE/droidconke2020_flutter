import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:flutter/material.dart';

class Passport extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;

  const Passport({Key key, this.title, this.subtitle, @required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.biggest.width;
        return Container(
          width: width,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Palette.green[100],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Palette.green,
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                        image: DecorationImage(
                          image: image,
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 5),
              if (title != null)
                Text(
                  title,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.overline.copyWith(
                        color: Colors.black,
                      ),
                ),
              if (subtitle != null)
                Text(
                  subtitle,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
            ],
          ),
        );
      },
    );
  }
}
