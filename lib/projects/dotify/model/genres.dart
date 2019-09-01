import 'package:flutter/material.dart';

class Genre {
  final String title;
  final String icon;
  final String backgroundImage;

  Genre(
      {@required this.title,
      @required this.icon,
      @required this.backgroundImage});
}

List<Genre> genres = <Genre>[
  Genre(
      title: 'POP',
      backgroundImage: 'assets/dotify/img/pop.png',
      icon: 'assets/dotify/icons/pop_mic_icon.png'),
  Genre(
      title: 'ROCK',
      backgroundImage: 'assets/dotify/img/rock.png',
      icon: 'assets/dotify/icons/rock_fire_icon.png'),
  Genre(
      title: 'ELECTRONIC',
      backgroundImage: 'assets/dotify/img/electronic.png',
      icon: 'assets/dotify/icons/browse_icon.png')
];
