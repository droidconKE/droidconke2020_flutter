import 'package:droidconke2020_flutter/blocs/theme_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/tab_scaffold.dart';
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
        Provider<DateTime>(create: (_) => DateTime(2020, 8, 6)),
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
        primarySwatch: Palette.purple,
        brightness: brightness,
        accentColor: Palette.green,
        scaffoldBackgroundColor: darkTheme ? Palette.black : Palette.lightGray,
        errorColor: Palette.red,
        cardTheme: CardTheme(
          elevation: 2,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        textTheme: TextTheme(
          title: GoogleFonts.robotoSlab(
            // color: darkTheme ? Theme.of(context).primaryColor : Palette.black,
            color: Palette.purple,
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
            color: Palette.green[900],
            fontSize: 12,
            letterSpacing: .5,
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
