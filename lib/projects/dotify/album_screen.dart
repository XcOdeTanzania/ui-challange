import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_challenge/projects/dotify/widgets/music/popular_music_tile.dart';
import 'package:ui_challenge/style/themes.dart' as dotifyColors;


import 'now_playing_screen.dart';

class AlbumScreen extends StatelessWidget {
  final double _appBarHeight = 256.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: _appBarHeight,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  height: _appBarHeight,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                              child: Container(
                                height: 20,
                              ),
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black, BlendMode.saturation),
                              image: AssetImage(
                                'assets/dotify/img/album_cover.png',
                              ),
                              fit: BoxFit.cover,
                            )),
                            height: 280,
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              Text('ALBUM',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                              Text(
                                'Fawkesy in Sawkes',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              CircleAvatar(
                                radius: 70,
                                backgroundImage: AssetImage(
                                    'assets/dotify/img/album_cover.png'),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'G',
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 100,
                                            fontFamily: 'Roboto',
                                            
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'F',
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 100,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                    'assets/dotify/icons/heart_song_btn.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                    'assets/dotify/icons/play_artist_btn.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                    'assets/dotify/icons/share_music_btn.png'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('TRACK LIST',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        color: dotifyColors.Colors.dotifytextColorTwo)),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
            ]),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PopularMusicTile(
                  textColor: index == 0
                      ? Colors.red
                      : dotifyColors.Colors.dotifytextColorOne,
                  index: index,
                ),
              );
            }, childCount: 20),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/dotify/img/background.png'),
          ),
          title: Text(
            'I wont let you go',
            maxLines: 1,
          ),
          subtitle: Text('OK GO'),
          trailing: IconButton(
            icon: Image.asset('assets/dotify/icons/pause_btn.png'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((BuildContext context) => NowPlayingScreen())));
            },
          ),
        ),
      ),
    );
  }
}
