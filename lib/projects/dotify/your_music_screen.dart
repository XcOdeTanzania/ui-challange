import 'package:flutter/material.dart';
import 'package:ui_challenge/projects/dotify/background.dart';
import 'package:ui_challenge/projects/dotify/widgets/album/album_tile.dart';
import 'package:ui_challenge/projects/dotify/widgets/cards/category_card.dart';

import 'artist_screen.dart';

class YourMusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      scaffold: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            child: Container(
              child: Image.asset('assets/dotify/icons/menu_btn.png'),
            ),
          ),
          title: Text(
            'YOUR MUSIC',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/dotify/icons/search_btn.png'),
              onPressed: () {},
            )
          ],
        ),
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
                      image: 'assets/dotify/icons/artists_btn.png',
                    ),
                    CateoryCard(
                      image: 'assets/dotify/icons/album_btn.png',
                    ),
                    CateoryCard(
                      image: 'assets/dotify/icons/songs_btn.png',
                    ),
                    CateoryCard(
                      image: 'assets/dotify/icons/playlists_btn.png',
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
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return AlbumTile();
              }, childCount: 10),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/dotify/img/background.png'),
            ),
            title: Text('A Head Full of Dreams'),
            subtitle: Text('Coldplay'),
            trailing: IconButton(
              icon: Image.asset('assets/dotify/icons/pause_btn.png'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((BuildContext context) => ArtistScreen())));
              },
            ),
          ),
        ),
      ),
      sigmaX: 10,
      sigmaY: 10,
    );
  }
}
