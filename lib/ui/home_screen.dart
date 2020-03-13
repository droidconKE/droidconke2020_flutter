import 'package:droidconke2020_flutter/blocs/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<Brightness>(context);
    final themeBloc = Provider.of<ThemeBloc>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home',
              style: Theme.of(context).textTheme.subhead,
            ),
            FlatButton(
              child: Text("Toggle Theme"),
              onPressed: () {
                themeBloc.changeBrightness(theme == Brightness.light
                    ? Brightness.dark
                    : Brightness.light);
              },
            ),
          ],
        ),
      ),
    );
  }
}
