import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  bool _showMoreOption = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text('WhatsApp'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: 'CHAT',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            Container(color: Colors.pink),
            Container(
              child: Stack(
                children: <Widget>[
                  ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/profile/asha.jpg'),
                        ),
                        title: Text('Asha'),
                        subtitle: Text('Hello there am using whatsapp'),
                        trailing: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text('12:12AM', style: TextStyle(fontSize: 12)),
                            SizedBox(
                              height: 5,
                            ),
                            CircleAvatar(
                              child: Text('2',
                                  style: TextStyle(color: Colors.white)),
                              radius: 12,
                              backgroundColor: Colors.greenAccent,
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 80, right: 10),
                      child: AnimatedContainer(
                        height: _showMoreOption ? 300 : 0,
                        width: 70,
                        duration: Duration(milliseconds: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton(
                              backgroundColor: Colors.teal[800],
                              onPressed: () {},
                              child: Icon(Icons.message),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.teal[800],
                              onPressed: () {},
                              child: Icon(Icons.timer_off),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.teal[800],
                              onPressed: () {},
                              child: Icon(FontAwesomeIcons.file),
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.teal[800],
                              onPressed: () {},
                              child: Icon(Icons.flag),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.teal,
            ),
            Container(color: Colors.red)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal[800],
          child: Icon(_showMoreOption ? Icons.close : Icons.add),
          onPressed: () {
            setState(() {
              _showMoreOption = !_showMoreOption;
            });
          },
        ),
      ),
    );
  }
}
