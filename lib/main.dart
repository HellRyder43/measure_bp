import 'package:flutter/material.dart';
import 'package:measurebp/screens/history.dart';
import 'package:measurebp/screens/login.dart';
import 'package:measurebp/screens/mainMenu.dart';
import 'package:measurebp/screens/profile.dart';
import 'package:measurebp/screens/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BP Measurer",
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignUp(),
        '/login': (BuildContext context) => new Login(),
        '/mainmenu': (BuildContext context) => new MainMenu(),
        '/history': (BuildContext context) => new History(),
        '/profile': (BuildContext context) => new Profile(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Login(),
    );
  }
}
