import 'package:flutter/material.dart';
import 'package:pothole/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pothole Tracker',
      initialRoute: '/',
      routes: {'/': (context) => App()},
      theme: ThemeData(
          primarySwatch: Colors.purple,
          brightness: Brightness.dark,
          primaryColor: Colors.grey),
    );
  }
}
