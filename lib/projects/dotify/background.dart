import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Scaffold scaffold;
  final double sigmaX;
  final double sigmaY;

  const Background(
      {Key key,
      @required this.scaffold,
      @required this.sigmaX,
      @required this.sigmaY})
      : super(key: key);
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
          child: scaffold,
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        )
        );
  }
}
