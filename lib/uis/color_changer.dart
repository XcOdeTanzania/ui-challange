import 'package:flutter/material.dart';
import 'package:ui_challenge/Model/colors.dart';

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _backgroundColor = Colors.indigo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 100,
              ),
              ListTile(
                leading: Icon(
                  Icons.color_lens,
                  size: 60,
                  color: Colors.white,
                ),
                trailing: Icon(
                  Icons.more_vert,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Boom - magic color change!',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myColors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _backgroundColor = myColors[index].color;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: myColors[index].color,
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                      ),
                    );
                  },
                )),
          )
        ],
      ),
    );
  }
}
