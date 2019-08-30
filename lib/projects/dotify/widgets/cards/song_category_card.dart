import 'package:flutter/material.dart';

class SongCategoryCard extends StatelessWidget {
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
                      image: AssetImage('assets/dotify/img/background.png'))),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 28,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('Todays Top Hits'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
