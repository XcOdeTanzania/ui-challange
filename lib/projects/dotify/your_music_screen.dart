import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:ui_challenge/projects/dotify/artist_screen.dart';
import 'package:ui_challenge/projects/dotify/model/album.dart';
import 'package:ui_challenge/projects/dotify/screens/zoom_scaffold.dart';
import 'package:ui_challenge/projects/dotify/widgets/album/album_tile.dart';
import 'package:ui_challenge/projects/dotify/widgets/cards/category_card.dart';

import 'album_screen.dart';
import 'model/scoped_model/main.dart';

final Screen yourMusicScreen = new Screen(
    title: 'MUSIC',
    background: new DecorationImage(
      image: new AssetImage('assets/dotify/img/background.png'),
      fit: BoxFit.cover,
    ),
    contentBuilder: (BuildContext context) {
      return ScopedModelDescendant(
          builder: (BuildContext context, Widget child, MainModel model) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CateoryCard(
                        image: model.selectedCategoryIndex == 0
                            ? 'assets/dotify/icons/artists_btn.png'
                            : 'assets/dotify/icons/artists_btn_white.png',
                        onTap: () {
                          model.setSelectedCategoryIndex(index: 0);
                        },
                      ),
                      CateoryCard(
                        image: model.selectedCategoryIndex == 1
                            ? 'assets/dotify/icons/album_btn.png'
                            : 'assets/dotify/icons/album_btn_white.png',
                        onTap: () {
                          model.setSelectedCategoryIndex(index: 1);
                        },
                      ),
                      CateoryCard(
                        image: model.selectedCategoryIndex == 2
                            ? 'assets/dotify/icons/songs_btn.png'
                            : 'assets/dotify/icons/songs_btn_white.png',
                        onTap: () {
                          model.setSelectedCategoryIndex(index: 2);
                        },
                      ),
                      CateoryCard(
                        image: model.selectedCategoryIndex == 3
                            ? 'assets/dotify/icons/playlists_btn.png'
                            : 'assets/dotify/icons/playlists_btn_white.png',
                        onTap: () {
                          model.setSelectedCategoryIndex(index: 3);
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                ]),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return model.selectedCategoryIndex == 0
                        ? AlbumTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((BuildContext context) =>
                                          ArtistScreen())));
                            },
                            album: artists[index],
                          )
                        : (model.selectedCategoryIndex == 1
                            ? AlbumTile(
                                album: albums[index],
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((BuildContext context) =>
                                              AlbumScreen())));
                                },
                              )
                            : (model.selectedCategoryIndex == 2
                                ? AlbumTile(
                                    album: albums[index],
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder:
                                                  ((BuildContext context) =>
                                                      AlbumScreen())));
                                    },
                                  )
                                : AlbumTile(
                                    album: artists[index],
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder:
                                                  ((BuildContext context) =>
                                                      ArtistScreen())));
                                    },
                                  )));
                  },
                  childCount: albums.length,
                ),
              ),
            ],
          ),
        );
      });
    });
