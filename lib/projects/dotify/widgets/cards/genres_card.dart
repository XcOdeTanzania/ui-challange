import 'package:flutter/material.dart';

import 'package:ui_challenge/projects/dotify/model/genres.dart';
import 'package:ui_challenge/style/themes.dart' as dotifyColors;

typedef GenreCallBack = Function();

class GenresCard extends StatelessWidget {
  final Genre genre;
  final GenreCallBack onTap;
  const GenresCard({Key key, @required this.genre, @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
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
                              image: AssetImage(genre.backgroundImage))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 130,
                      width: 150,
                      color: dotifyColors.Colors.dotifySecondaryColor,
                      child: Hero(
                        child: Image.asset(genre.icon),
                        tag: genre.icon,
                      ),
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
                    child: Text(genre.title),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
