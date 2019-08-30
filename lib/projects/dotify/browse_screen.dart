import 'package:flutter/material.dart';
import 'package:ui_challenge/projects/dotify/background.dart';
import 'package:ui_challenge/projects/dotify/widgets/cards/genres_card.dart';
import 'package:ui_challenge/projects/dotify/widgets/cards/song_category_card.dart';
import 'package:ui_challenge/projects/dotify/your_music_screen.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      scaffold: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            child: Container(
              child: Image.asset('assets/dotify/icons/menu_btn.png'),
            ),
          ),
          title: Image.asset('assets/dotify/icons/dotify_icon.png'),
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
                Text('BROWSE',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 19))
              ]),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 175,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: SongCategoryCard(),
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
                      style: TextStyle(fontSize: 15, color: Color(0xff262626))),
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
                  trailing:
                      Image.asset('assets/dotify/icons/view_album_btn.png'),
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
                      style: TextStyle(fontSize: 15, color: Color(0xff262626))),
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
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: GenresCard(),
                    );
                  },
                ),
              ),
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
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((BuildContext context) =>
                            YourMusicScreen())));
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
