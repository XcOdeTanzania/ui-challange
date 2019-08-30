import 'package:flutter/material.dart';
import 'package:ui_challenge/style/themes.dart' as dotifyColors;

class GenresCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 175,
        width: 147,
        child: Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/dotify/img/background.png'))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 130,
                    width: 150,
                    color: dotifyColors.Colors.dotifySecondaryColor,
                    child: Image.asset('assets/dotify/icons/pop_mic_icon.png'),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 28,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('POP'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
