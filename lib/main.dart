import 'package:debug_mode/debug_mode.dart';
import 'package:droidconke2020_flutter/blocs/auth/auth_bloc.dart';
import 'package:droidconke2020_flutter/blocs/sessions_bloc.dart';
import 'package:droidconke2020_flutter/blocs/theme/theme_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/about/about_screen.dart';
import 'package:droidconke2020_flutter/ui/about/team_member_screen.dart';
import 'package:droidconke2020_flutter/ui/auth/bloc/login_bloc.dart';
import 'package:droidconke2020_flutter/ui/feed/feed_screen.dart';
import 'package:droidconke2020_flutter/ui/home/home_screen.dart';
import 'package:droidconke2020_flutter/ui/sessions/sessions_screen.dart';
import 'package:droidconke2020_flutter/ui/sessions/speaker_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/sessions/widgets/session_detail_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/tab_scaffold.dart';
import 'package:droidconke2020_flutter/ui/splash/splash_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:provider/provider.dart';

import 'blocs/countdown_timer_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  Crashlytics.instance.enableInDevMode = true;
  if (DebugMode.isInDebugMode) {
    Stetho.initialize();
  }
  // Pass all uncaught errors from the framework to Crashlytics.
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAnalytics>.value(value: analytics),
        Provider<FirebaseAnalyticsObserver>.value(
          value: FirebaseAnalyticsObserver(analytics: analytics),
        ),
        Provider<SessionsBloc>.value(value: SessionsBloc()),
        Provider<CountdownTimerBloc>.value(
          value: CountdownTimerBloc(
            eventStart: DateTime(2020, 4, 20, 18, 0, 0),
            // eventStart: DateTime(2020, 8, 6, 8, 0, 0),
          ),
        ),
        ChangeNotifierProvider<CupertinoTabController>(
          create: (_) => CupertinoTabController(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (BuildContext context) => ThemeBloc(),
          ),
          BlocProvider<AuthBloc>(
            create: (BuildContext context) => AuthBloc(),
          ),
          BlocProvider<LoginBloc>(
            create: (BuildContext context) => LoginBloc(),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) => MaterialAppWidget(
            brightness: state.brightness,
          ),
        ),
      ),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  final Brightness brightness;

  const MaterialAppWidget({Key key, this.brightness}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkTheme = brightness == Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: darkTheme ? Palette.darkBlack : Palette.purple,
      ),
    );

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
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
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
      routes: {
        AboutScreen.routeName: (context) => AboutScreen(),
        TeamMemberScreen.routeName: (context) => TeamMemberScreen(),
        FeedScreen.routeName: (context) => FeedScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SessionDetailScreen.routeName: (context) => SessionDetailScreen(),
        SessionsScreen.routeName: (context) => SessionsScreen(),
        SpeakerDetailScreen.routeName: (context) => SpeakerDetailScreen(),
      },
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (!(state is AuthStateInitial)) {
            return TabScaffold();
          }
          return SplashScreen();
        },
      ),
      navigatorObservers: [
        Provider.of<FirebaseAnalyticsObserver>(context, listen: false),
      ],
    );
  }
}
