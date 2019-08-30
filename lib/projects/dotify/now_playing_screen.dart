import 'package:flutter/material.dart';

import 'package:ui_challenge/style/themes.dart' as dotifyColors;

class NowPlayingScreen extends StatelessWidget {
  final double _spaceWidth = 30;
  @override
  Widget build(BuildContext context) {
    final double _appBarHeight = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Image.asset('assets/dotify/icons/dismiss_music.png'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: dotifyColors.Colors.dotifyPrimaryColor,
            expandedHeight: _appBarHeight,
            pinned: true,
            actions: <Widget>[
              IconButton(
                icon: Image.asset('assets/dotify/icons/music_info.png'),
                onPressed: () {},
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text('',
                  style: TextStyle(
                    fontFamily: 'trajanProRegular',
                    fontSize: 18.0,
                  )),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    'assets/dotify/img/playing_now_background.png',
                    fit: BoxFit.cover,
                    height: _appBarHeight,
                  ),
                  DecoratedBox(
                    child: Container(
                      color: Colors.white70,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, -0.4),
                        colors: <Color>[Color(0x60000000), Color(0x00000000)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 40.0,
                        ),
                      ],
                    ),
                    height: 20,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Slider(
                            activeColor: Colors.red,
                            inactiveColor: Colors.red[200],
                            onChanged: (double value) {},
                            value: 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('1.18', textAlign: TextAlign.start),
                        ),
                        Expanded(
                          child: Text('-2.28', textAlign: TextAlign.end),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset(
                            'assets/dotify/icons/favorite_song_btn.png'),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[

                            Text(
                              'The Mars Song',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: TextStyle(fontSize: 27),
                            ),
                            Text('Elon Musk - Take me To The Moon',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        dotifyColors.Colors.dotifytextColorTwo))
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Image.asset(
                            'assets/dotify/icons/more_info_btn.png'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Image.asset(
                              'assets/dotify/icons/shuffle_btn.png',
                              fit: BoxFit.cover),
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: _spaceWidth,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Image.asset(
                              'assets/dotify/icons/rewind_btn.png',
                              fit: BoxFit.cover),
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: _spaceWidth,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Image.asset(
                            'assets/dotify/icons/play_btn.png',
                            fit: BoxFit.cover,
                            height: 80,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: _spaceWidth,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Image.asset(
                              'assets/dotify/icons/fastforward_btn.png',
                              fit: BoxFit.cover),
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: _spaceWidth,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Image.asset(
                              'assets/dotify/icons/repeat_btn.png',
                              fit: BoxFit.cover),
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                        height: 40,
                      ),
                  FlatButton.icon(
                    icon: Image.asset(
                      'assets/dotify/icons/speaker.png',
                      height: 30,
                    ),
                    label: Text(
                      'Headphones',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
