import 'package:flutter/material.dart';

class CateoryCard extends StatelessWidget {
  final String image;

  const CateoryCard({Key key, @required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 52,
        width: 78,
        child: Center(
          child: Image.asset(image),
        ),
      ),
    );
  }
}
