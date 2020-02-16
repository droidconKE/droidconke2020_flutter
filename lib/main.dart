import 'package:droidconke2020_flutter/widgets/tab_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DroidconKE 2020',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TabScaffold(),
    );
  }
}
