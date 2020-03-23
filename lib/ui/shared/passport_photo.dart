import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:flutter/material.dart';

class PassportPhoto extends StatelessWidget {
  const PassportPhoto({
    Key key,
    @required this.imageFrameSize,
    @required this.imageSize,
    @required this.image,
    this.frameColor,
  }) : super(key: key);

  final double imageFrameSize;
  final double imageSize;
  final ImageProvider image;
  final Color frameColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: imageFrameSize,
          width: imageFrameSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(imageFrameSize / 2),
            color: frameColor ?? Palette.green,
          ),
        ),
        Container(
          height: imageSize,
          width: imageSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(imageSize / 2),
            color: Colors.white,
            image: DecorationImage(
              image: image,
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
