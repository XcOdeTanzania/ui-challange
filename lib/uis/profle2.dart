import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: new Padding(
            padding: const EdgeInsets.only(
                left: 10, top: 20.0, bottom: 10.0, right: 10),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.9, 0.0),
                colors: [Color(0xfffc63d7), Color(0xffff8363)]),
          ),
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
      ),
    
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Color(0xfffc63d7), Color(0xffff8363)],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.9, 0.0),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                )),
            height: MediaQuery.of(context).size.height / 3,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Date mate',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.italic),
              )),
          Padding(
            padding:
                const EdgeInsets.only(left: 40, top: 50, right: 40, bottom: 40),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('assets/img/pic.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Align(
                alignment: Alignment.topCenter,
                child: Chip(
                  backgroundColor: Colors.yellow,
                  label: Text(
                    '3.7mil away',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 270,
              child: Column(
                children: <Widget>[
                  Text(
                    'Robbyn-27',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  FlatButton.icon(
                    icon: Icon(
                      Icons.pin_drop,
                      color: Colors.black26,
                    ),
                    label: Text(
                      'Mwenge, Dar Es Salaam, Tanzania',
                      style: TextStyle(
                          color: Colors.black26,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.black38, size: 30),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.facebookF,
                            color: Colors.black38, size: 30),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.black38,
                          size: 30,
                        ),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60, left: 25, right: 25),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Color(0xfffc63d7), Color(0xffff8363)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                height: 60,
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.user,
                          color: Colors.white, size: 25),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.pin_drop, color: Colors.white, size: 25),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    )
                  ],
                )),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  height: 60,
                  width: 60,
                  child: Icon(Icons.favorite, color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
