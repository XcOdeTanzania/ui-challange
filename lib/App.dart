import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:ui_challenge/projects/dotify/browse_screen.dart';
import 'package:ui_challenge/projects/dotify/screens/menu_screen.dart';
import 'package:ui_challenge/projects/dotify/screens/zoom_scaffold.dart';
import 'package:ui_challenge/projects/dotify/your_music_screen.dart';
import 'package:ui_challenge/screens/animated_splash_screen.dart';
import 'package:ui_challenge/screens/home.dart';

import 'constants/constant.dart';
import 'projects/dotify/model/scoped_model/main.dart';

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final MainModel _model = MainModel();
  final menu = new Menu(
    items: [
      new MenuItem(
          id: 'browse',
          title: 'BROWSE',
          icon: 'assets/dotify/icons/browse_icon.png'),
      new MenuItem(
          id: 'activity',
          title: 'ACTIVITY',
          icon: 'assets/dotify/icons/activity_icon.png'),
      new MenuItem(
          id: 'radio',
          title: 'RADIO',
          icon: 'assets/dotify/icons/radio_icon.png'),
      new MenuItem(
          id: 'music',
          title: 'YOUR MUSIC',
          icon: 'assets/dotify/icons/music_library_icon.png'),
    ],
  );

  var selectedMenuItemId = 'browse';
  var activeScreen = browseScreen;
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      child: MaterialApp(
        title: 'UI Challenge',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(),
        routes: {
          homeScreen: (BuildContext context) => HomePage(),
          dotifyScreen: (BuildContext context) => ZoomScaffold(
                menuScreen: new MenuScreen(
                  menu: menu,
                  selectedItemId: selectedMenuItemId,
                  onMenuItemSelected: (String itemId) {
                    selectedMenuItemId = itemId;
                    switch (itemId) {
                      case 'browse':
                        setState(() => activeScreen = browseScreen);
                        break;
                      case 'music':
                        setState(() => activeScreen = yourMusicScreen);
                        break;
                      default:
                        setState(() => activeScreen = browseScreen);
                    }
                  },
                ),
                contentScreen: activeScreen,
              )
        },
      ),
      model: _model,
    );
  }
}
