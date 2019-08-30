import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_challenge/projects/dotify/sign_up_screen.dart';

import 'login_screen.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.grey, BlendMode.saturation),
                image: AssetImage(
                  'assets/dotify/img/background.png',
                ),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 63,
                ),
                Container(
                  height: 70,
                  child: Center(
                      child: Image.asset(
                          'assets/dotify/icons/dotify_icon@3x.png')),
                ),
                SizedBox(
                  height: 272,
                ),
                Container(
                  height: 100,
                  color: Color(0xffE55F2C),
                  child: Center(
                      child: Text(
                    'Your Music',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  )),
                ),
                Container(
                  height: 50,
                  color: Color(0x75E55F2C),
                  child: Center(
                      child: Text(
                    'Tuned to you.',
                    style: TextStyle(fontSize: 33, color: Colors.white),
                  )),
                )
              ],
            ),
            backgroundColor: Colors.transparent,
            bottomNavigationBar: BottomAppBar(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Text('LOG IN', style: TextStyle( fontSize: 25),),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((BuildContext context) =>
                                    LoginScreen())));
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xffE55F2C),
                      child: FlatButton(
                        color: Color(0xffE55F2C),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((BuildContext context) =>
                                    SignUpScreen())));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        ));
  }
}
