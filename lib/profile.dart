import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.9, 0.0),
                colors: [Color(0xfff93f3c), Color(0xfff93f3c)]),
          ),
          padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Padding(
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
                Text('View Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(0.9, 0.0),
                    colors: [Color(0xfff93f3c), Color(0xffff896c)]),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.phone,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                    
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/img/a.jpeg'),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffff896c),
                              borderRadius: BorderRadius.circular(60)),
                        ),
                        Text(
                          'Dismas Robin',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'Dar Es Salaam',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                 Container(
                   margin: EdgeInsets.only(right: 10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.message,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                    
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xffff896c),
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text('50895', style: TextStyle(color: Colors.white)),
                        Text('FOLLOWERS',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xfff93f3c),
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text('50895', style: TextStyle(color: Colors.white)),
                        Text('FOLLOWERS',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                )
              ],
            ),
            ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(color: Color(0xffff896c)),
                ),
                subtitle: Text('kalrobbynson@gmail.com')),
            Divider(),
            ListTile(
                onTap: () {},
                title:
                    Text('Phone', style: TextStyle(color: Color(0xffff896c))),
                subtitle: Text('+255715785672')),
            Divider(),
            ListTile(
                onTap: () {},
                title:
                    Text('Twitter', style: TextStyle(color: Color(0xffff896c))),
                subtitle: Text('@kalimwenjuma')),
            Divider(),
            ListTile(
                onTap: () {},
                title: Text('Facebook',
                    style: TextStyle(color: Color(0xffff896c))),
                subtitle: Text('facebook.com/kalimwenjuma')),
            Divider()
          ],
        ),
      ),
    );
  }
}
