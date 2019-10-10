import 'package:flutter/foundation.dart';

class Album {
  final String imageCover;
  final String title;
  final String subtitle;
  final List<String> intials;

  Album({
    @required this.imageCover,
    @required this.title,
    @required this.subtitle,
    @required this.intials,
  });
}

List<Album> albums = <Album>[
  Album(
    imageCover: 'assets/dotify/img/1.png',
    subtitle: 'Bon Jovi',
    title: 'Slippery When Wet',
    intials: <String>['B', 'J'],
    
  ),
  Album(
      imageCover: 'assets/dotify/img/2.png',
      subtitle: 'The Smiths',
      title: 'The Queen Is Dead',
      intials: <String>['T', 'S']),
  Album(
      imageCover: 'assets/dotify/img/3.png',
      subtitle: 'Blur',
      title: 'Parklife',
      intials: <String>['P', 'J ']),
    
  Album(
      imageCover: 'assets/dotify/img/3.png',
      subtitle: 'Belle & Sebastian',
      title: 'If You’re Feeling Sinister',
      intials: <String>['B', 'S']),
  Album(
      imageCover: 'assets/dotify/img/4.png',
      subtitle: 'Guns N\' Roses',
      title: 'Appetite for Destruction',
      intials: <String>['G', 'R']),
  Album(
      imageCover: 'assets/dotify/img/5.png',
      subtitle: 'Fatboy Slim',
      title: 'You\'ve Come a Long Way Baby',
      intials: <String>['F', 'S']),
  Album(
      imageCover: 'assets/dotify/img/6.png',
      subtitle: 'Ornette Coleman',
      title: 'The Shape of Jazz to Come',
      intials: <String>['O', 'C']),
  Album(
      imageCover: 'assets/dotify/img/7.png',
      subtitle: 'The Smith',
      title: 'Strangeways, Here We Come',
      intials: <String>['T', 'S']),
  Album(
      imageCover: 'assets/dotify/img/8.png',
      subtitle: 'Fatboy Slim',
      title: 'You\'ve Come a Long Way Baby',
      intials: <String>['F', 'S']),
];

List<Album> artists = <Album>[];
