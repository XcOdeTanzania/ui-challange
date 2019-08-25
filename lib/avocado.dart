import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AvocadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Image(
                image: AssetImage('assets/img/avocado.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Avocado',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('\$1.80 / kg',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('100 gms for 1-2 pieces',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 20)),
                        ),
                        FlatButton.icon(
                          label: Text('160'),
                          icon: Icon(
                            FontAwesomeIcons.fire,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Slider(
                      activeColor: Colors.red,
                      inactiveColor: Colors.red[100],
                      onChanged: (double value) {},
                      value: 0.3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('1.5 kg(12-14 piece approxs)',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('\$ 270',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: RaisedButton(
                            color: Colors.pink[200],
                            onPressed: () {},
                            child: Text(
                              'Add To Cart',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Icon(Icons.keyboard_arrow_up),
                        ),
                      )
                    ],
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center( child: Text(
                              'Know More',
                              style: TextStyle(color: Colors.pink, fontSize: 20),
                            ),)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 320),
            child: Container(
              height: 40,
              width: 40,
              child: Icon(Icons.favorite_border),
              decoration: BoxDecoration(
                color: Color(0xfff7f7f7),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
