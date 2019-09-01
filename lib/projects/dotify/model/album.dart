import 'package:flutter/foundation.dart';

class Album {
  final String imageCover;
  final String title;
  final String subtitle;

  Album(
      {@required this.imageCover,
      @required this.title,
      @required this.subtitle});
}

List<Album> albums = <Album>[
  Album(
      imageCover: 'assets/dotify/img/1.png',
      subtitle: 'Bon Jovi',
      title: 'Slippery When Wet'),
  Album(
      imageCover: 'assets/dotify/img/2.png',
      subtitle: 'The Smiths',
      title: 'The Queen Is Dead'),
  Album(
      imageCover: 'assets/dotify/img/3.png',
      subtitle: 'Blur',
      title: 'Parklife'),
  Album(
      imageCover: 'assets/dotify/img/3.png',
      subtitle: 'Belle & Sebastian',
      title: 'If You’re Feeling Sinister'),
  Album(
      imageCover: 'assets/dotify/img/4.png',
      subtitle: 'Guns N\' Roses',
      title: 'Appetite for Destruction'),
  Album(
      imageCover: 'assets/dotify/img/5.png',
      subtitle: 'Fatboy Slim',
      title: 'You\'ve Come a Long Way Baby'),
  Album(
      imageCover: 'assets/dotify/img/6.png',
      subtitle: 'Ornette Coleman',
      title: 'The Shape of Jazz to Come'),
  Album(
      imageCover: 'assets/dotify/img/7.png',
      subtitle: 'The Smith',
      title: 'Strangeways, Here We Come'),
  Album(
      imageCover: 'assets/dotify/img/8.png',
      subtitle: 'Fatboy Slim',
      title: 'You\'ve Come a Long Way Baby'),
];
