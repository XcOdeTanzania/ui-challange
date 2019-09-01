import 'package:flutter/material.dart';

import 'package:ui_challenge/projects/dotify/model/song_cats.dart';

class SongCategoryCard extends StatelessWidget {
  final SongCats songCats;

  const SongCategoryCard({Key key, @required this.songCats}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 175,
        width: 147,
        child: Stack(
          children: <Widget>[
            Container(
              height: 130,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(songCats.backgroundImage))),
              child: Center(
                child: Container(
                  height: 130,
                  color: Colors.black38,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: songCats.title + '\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'AbrilFatface',
                            fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: songCats.subtitle + '\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Roboto')),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 28,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(songCats.caption),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
