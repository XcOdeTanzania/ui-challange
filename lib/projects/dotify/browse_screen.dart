import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:ui_challenge/projects/dotify/screens/zoom_scaffold.dart';
import 'package:ui_challenge/projects/dotify/widgets/cards/genres_card.dart';
import 'package:ui_challenge/projects/dotify/widgets/cards/song_category_card.dart';

import 'model/genres.dart';
import 'model/scoped_model/main.dart';
import 'model/song_cats.dart';

final Screen browseScreen = new Screen(
    title: 'BROWSE',
    background: new DecorationImage(
      image: new AssetImage('assets/dotify/img/background.png'),
      fit: BoxFit.cover,
    ),
    contentBuilder: (BuildContext context) {
      return ScopedModelDescendant(
          builder: (BuildContext context, Widget child, MainModel model) {
        return Stack(
          children: <Widget>[
            Scaffold(
              backgroundColor: Colors.white60,
              body: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      SizedBox(
                        height: 10,
                      ),
                      Text('BROWSE',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 19))
                    ]),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 175,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: songCats.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: SongCategoryCard(
                              songCats: songCats[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('FEATURED ALBUM',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff262626))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Divider(
                          color: Color(0xff262626),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/dotify/img/background.png'))),
                        ),
                        title: Text('Variable Swithciii'),
                        subtitle: Text('Swifthaed'),
                        trailing: Image.asset(
                            'assets/dotify/icons/view_album_btn.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Divider(
                          color: Color(0xff262626),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('GENRES & MOODS',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff262626))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Slider(
                          activeColor: Colors.red,
                          onChanged: (double value) {},
                          value: 0.3,
                        ),
                      ),
                    ]),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 175,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: genres.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: model.selectedGenreIndex == index
                                ? Container(
                                    height: 130,
                                    width: 150,
                                  )
                                : GenresCard(
                                    genre: genres[index],
                                    onTap: () {
                                      print('am gooo');
                                      model.setSelectedGenreIndex(index: index);
                                    },
                                  ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: model.selectedGenreIndex != null
                  ? Container(
                      padding: EdgeInsets.only(top: 100),
                      child: GenresCard(
                        genre: genres[model.selectedGenreIndex],
                        onTap: () {
                          print('am gooo');
                          model.setSelectedGenreIndex(index: null);
                        },
                      ),
                    )
                  : Container(),
            )
          ],
        );
      });
    });
