import 'package:flutter/material.dart';

import 'drawer.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Challlege'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 200,),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/img/qlicue.jpg'),
          ),
           Text(
            'QLICUE',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Text(
            'MOBILE MONDAY \n&\nHACK FRIDAY',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ],
      )),
      drawer: Container(
        child: DrawerPage(),
        width: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
