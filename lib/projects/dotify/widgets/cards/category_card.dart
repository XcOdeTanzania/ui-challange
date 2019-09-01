import 'package:flutter/material.dart';

typedef CardTapCallBack = Function();

class CateoryCard extends StatelessWidget {
  final String image;
  final CardTapCallBack onTap;
  const CateoryCard({Key key, @required this.onTap, @required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Container(
          height: 52,
          width: 78,
          child: Center(
            child: Image.asset(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
