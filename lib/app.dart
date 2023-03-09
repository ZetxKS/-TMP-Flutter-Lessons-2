import 'package:flutter/material.dart';
import 'package:newsapp/screens/commets_screen.dart';
import 'package:newsapp/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(fontFamily: 'Ubuntu', backgroundColor: Colors.red),
    );
  }
}
