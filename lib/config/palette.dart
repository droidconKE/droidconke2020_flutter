import 'package:flutter/material.dart';

class Palette {
  static Color white = Colors.white;
  static Color lightGray = Color(0xFFF6F6F8);
  static Color lighterBlack = Color(0xFF191D1D);
  static Color black = Color(0xFF0A0A0A);
  static Color darkBlack = Color(0xFF000000);

  static MaterialColor gray = MaterialColor(0xFF707070, {
    50: Color(0xFFeeeeee),
    100: Color(0xFFd4d4d4),
    200: Color(0xFFb8b8b8),
    300: Color(0xFF9b9b9b),
    400: Color(0xFF858585),
    500: Color(0xFF707070),
    600: Color(0xFF686868),
    700: Color(0xFF5d5d5d),
    800: Color(0xFF535353),
    900: Color(0xFF414141),
  });
  static MaterialColor green = MaterialColor(0xFF68DEA4, {
    50: Color(0xFFedfbf4),
    100: Color(0xFFd2f5e4),
    200: Color(0xFFb4efd2),
    300: Color(0xFF95e8bf),
    400: Color(0xFF7fe3b2),
    500: Color(0xFF68dea4),
    600: Color(0xFF60da9c),
    700: Color(0xFF55d592),
    800: Color(0xFF4bd189),
    900: Color(0xFF3ac878),
  });
  static MaterialColor yellow = MaterialColor(0xFFFFD54A, {
    50: Color(0xFFfffae9),
    100: Color(0xFFfff2c9),
    200: Color(0xFFffeaa5),
    300: Color(0xFFffe280),
    400: Color(0xFFffdb65),
    500: Color(0xFFffd54a),
    600: Color(0xFFffd043),
    700: Color(0xFFffca3a),
    800: Color(0xFFffc432),
    900: Color(0xFFffba22),
  });
  static MaterialColor red = MaterialColor(0xFFED1C24, {
    50: Color(0xFFfde4e5),
    100: Color(0xFFfabbbd),
    200: Color(0xFFf68e92),
    300: Color(0xFFF26066),
    400: Color(0xFFf03e45),
    500: Color(0xFFed1c24),
    600: Color(0xFFeb1920),
    700: Color(0xFFe8141b),
    800: Color(0xFFe51116),
    900: Color(0xFFe0090d),
  });
  static MaterialColor purple = MaterialColor(0xFF843D95, {
    50: Color(0xFFf0e8f2),
    100: Color(0xFFdac5df),
    200: Color(0xFFc29eca),
    300: Color(0xFFa977b5),
    400: Color(0xFF965aa5),
    500: Color(0xFF843d95),
    600: Color(0xFF7c378d),
    700: Color(0xFF712f82),
    800: Color(0xFF672778),
    900: Color(0xFF541a67),
  });

  static List<MaterialColor> colors = [purple, red, green, yellow, gray];
}
