import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/passport_photo.dart';
import 'package:flutter/material.dart';

class Passport extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final double size;
  final double backgroundOpacity;
  final Color frameColor;

  const Passport({
    Key key,
    this.title,
    this.subtitle,
    @required this.image,
    this.size,
    this.backgroundOpacity = 1,
    this.frameColor,
  })  : assert(backgroundOpacity <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = size ?? constraints.biggest.width;
        var imageFrameSize = width * .75;
        var imageSize = width * .70;
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
                  color: Palette.green[100].withOpacity(backgroundOpacity),
                ),
                child: PassportPhoto(
                  imageFrameSize: imageFrameSize,
                  imageSize: imageSize,
                  image: image,
                  frameColor: frameColor,
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
