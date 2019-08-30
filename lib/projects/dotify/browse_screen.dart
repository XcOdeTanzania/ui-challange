import 'package:flutter/material.dart';
import 'package:ui_challenge/projects/dotify/background.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      scaffold: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            child: Container(
              child: Image.asset('assets/dotify/icons/menu_btn.png'),
            ),
          ),
          title: Image.asset('assets/dotify/icons/dotify_icon.png'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/dotify/icons/search_btn.png'),
              onPressed: () {},
            )
          ],
        ),
      ),
      sigmaX: 10,
      sigmaY: 10,
    );
  }
}
