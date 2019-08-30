import 'package:flutter/material.dart';

class AlbumTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/dotify/img/background.png'))),
          ),
          title: Text('Variable Swithciii'),
          subtitle: Text('Swifthaed'),
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
