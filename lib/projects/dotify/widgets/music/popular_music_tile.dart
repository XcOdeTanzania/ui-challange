import 'package:flutter/material.dart';
import 'package:ui_challenge/style/themes.dart' as dotifyColors;

class PopularMusicTile extends StatelessWidget {
  final Color textColor;
  final int index;

  const PopularMusicTile(
      {Key key, @required this.textColor, @required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Text((index + 1).toString()),
          title: Text(
            'Every Day',
            style: TextStyle(color: textColor),
          ),
          subtitle: Text(
            '1272663',
            style: TextStyle(color: dotifyColors.Colors.dotifytextColorTwo),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/dotify/icons/more_info_btn.png'),
          ),
        )
      ],
    );
  }
}
