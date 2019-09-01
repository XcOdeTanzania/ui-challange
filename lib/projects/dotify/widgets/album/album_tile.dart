import 'package:flutter/material.dart';
import 'package:ui_challenge/projects/dotify/model/album.dart';
typedef AlbumTapCallBack = Function();
class AlbumTile extends StatelessWidget {
  final Album album;
   final AlbumTapCallBack  onTap;
  const AlbumTile({Key key, @required this.album, @required  this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: onTap,
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(album.imageCover))),
          ),
          title: Text(album.title),
          subtitle: Text(album.subtitle),
          trailing: Image.asset('assets/dotify/icons/view_album_btn.png'),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
        )
      ],
    );
  }
}
