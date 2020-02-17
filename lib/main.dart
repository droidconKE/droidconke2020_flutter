import 'package:droidconke2020_flutter/blocs/theme_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/widgets/tab_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeBloc = ThemeBloc();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ThemeBloc>.value(value: themeBloc),
        StreamProvider<Brightness>(
          initialData: Brightness.light,
          create: (context) => themeBloc.brightness,
        ),
      ],
      child: MaterialAppWidget(),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final brightness = Provider.of<Brightness>(context);
    final darkTheme = brightness == Brightness.dark;

    return MaterialApp(
      title: 'DroidconKE 2020',
      theme: ThemeData(
        primarySwatch: MaterialColor(Palette.purple.value, {
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
        }),
        brightness: brightness,
        accentColor: Palette.green,
        scaffoldBackgroundColor: darkTheme ? Palette.black : Palette.lightGray,
        errorColor: Palette.red,
        textTheme: TextTheme(
          title: GoogleFonts.robotoSlab(
            color: darkTheme ? Theme.of(context).primaryColor : Palette.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          body1: GoogleFonts.roboto(
            color: darkTheme ? Palette.white : Palette.gray,
            fontSize: 16,
          ),
          body2: GoogleFonts.roboto(
            color: darkTheme ? Palette.white : Palette.gray,
            fontSize: 14,
          ),
          caption: GoogleFonts.roboto(
            color: Palette.gray,
            fontSize: 11,
          ),
          overline: GoogleFonts.roboto(
            color: Palette.green,
            fontSize: 12,
          ),
          subhead: GoogleFonts.robotoSlab(
            fontSize: 16,
            color: darkTheme ? Palette.white : Palette.black,
            fontWeight: FontWeight.bold,
          ),
          display1: GoogleFonts.roboto(
            color: Palette.green,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: TabScaffold(),
    );
  }
}
