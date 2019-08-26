import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyColors {
  final Color color;

  MyColors({@required this.color});
}

List<MyColors> myColors = <MyColors>[
  MyColors(
    color: Color(0xff7986cb),
  ),
  MyColors(
    color: Color(0xffffab91),
  ),
  MyColors(
    color: Colors.pink[300],
  ),
  MyColors(
    color: Colors.green[300],
  ),
  MyColors(
    color: Colors.blue,
  ),
  MyColors(
    color: Colors.cyan,
  )
];
