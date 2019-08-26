import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/animated_splash_screen.dart';
import 'package:ui_challenge/screens/home.dart';

import 'constants/constant.dart';


class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(),
      routes: {homeScreen: (BuildContext context) => HomePage()},
    );
  }
}
