import 'package:flutter/cupertino.dart';

class SongCats {
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String caption;

  SongCats(
      {@required this.title,
      @required this.subtitle,
      @required this.backgroundImage,
      @required this.caption});
}

List<SongCats> songCats = <SongCats>[
  SongCats(
      backgroundImage: 'assets/dotify/img/top_hits.png',
      caption: 'Today Top Hits',
      subtitle: 'HITS',
      title: 'TOP'),
  SongCats(
      backgroundImage: 'assets/dotify/img/viral.png',
      caption: 'Viral Hits',
      subtitle: 'VIRAL',
      title: ''),
  SongCats(
      backgroundImage: 'assets/dotify/img/acoustic.png',
      caption: 'Chill Acoustics',
      subtitle: 'Chill',
      title: '')
];
