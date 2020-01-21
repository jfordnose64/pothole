import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          brightness: Brightness.dark,
          primaryColor: Colors.grey,
          accentColor: Colors.blue),
    );
  }
}
