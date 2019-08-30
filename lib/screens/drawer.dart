import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge/Model/user.dart';
import 'package:ui_challenge/projects/dotify/launch_screen.dart';
import 'package:ui_challenge/uis/avocado.dart';
import 'package:ui_challenge/uis/color_changer.dart';
import 'package:ui_challenge/uis/profile.dart';
import 'package:ui_challenge/uis/profle2.dart';
import 'package:ui_challenge/uis/whatsapp.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static final Animatable<Offset> _drawerDetailsTween = Tween<Offset>(
    begin: const Offset(0.0, -1.0),
    end: Offset.zero,
  ).chain(CurveTween(
    curve: Curves.fastOutSlowIn,
  ));

  AnimationController _controller;
  Animation<double> _drawerContentsOpacity;
  Animation<Offset> _drawerDetailsPosition;
  bool _showDrawerContents = true;

  User _currentProfile;
  User _user1Profile;
  User _user2Profile;
  User _temporaryProfile;

  @override
  void initState() {
    _currentProfile = userList[0];
    _user1Profile = userList[1];
    _user2Profile = userList[2];

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _drawerContentsOpacity = CurvedAnimation(
      parent: ReverseAnimation(_controller),
      curve: Curves.fastOutSlowIn,
    );
    _drawerDetailsPosition = _controller.drive(_drawerDetailsTween);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(_currentProfile.email),
              accountName: Text(_currentProfile.name),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(_currentProfile.avatar),
              ),
              otherAccountsPictures: <Widget>[
                InkWell(
                  onTap: () {
                    exchangeUser(index: 1);
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(_user1Profile.avatar),
                  ),
                ),
                InkWell(
                  onTap: () {
                    exchangeUser(index: 2);
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(_user2Profile.avatar),
                  ),
                ),
              ],
              onDetailsPressed: () {
                _showDrawerContents = !_showDrawerContents;
                if (_showDrawerContents)
                  _controller.reverse();
                else
                  _controller.forward();
              },
            ),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 8.0),
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        FadeTransition(
                          opacity: _drawerContentsOpacity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(
                                  Icons.person,
                                  color: Colors.red[700],
                                ),
                                title: Text('Profile Design'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((BuildContext context) =>
                                              ProfilePage())));
                                },
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(
                                  Icons.fastfood,
                                  color: Colors.pink[100],
                                ),
                                title: Text('Avocado'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((BuildContext context) =>
                                              AvocadoPage())));
                                },
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(
                                  FontAwesomeIcons.user,
                                  color: Color(0xffff8363),
                                ),
                                title: Text('Profile 2'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((BuildContext context) =>
                                              ProfileTwoPage())));
                                },
                              ),
                              ListTile(
                                leading: Icon(
                                  FontAwesomeIcons.user,
                                  color: Color(0xffff8363),
                                ),
                                title: Text('Color Changer'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((BuildContext context) =>
                                              ColorChanger())));
                                },
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(
                                  FontAwesomeIcons.user,
                                  color: Color(0xffff8363),
                                ),
                                title: Text('WhatsApp'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((BuildContext context) =>
                                              WhatsApp())));
                                },
                              ),
                              Divider(),
                              ListTile(
                                leading: Container(
                                  height: 30,
                                  child: Image.asset(
                                    'assets/dotify/icons/dotify_icon@3x.png',
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((BuildContext context) =>
                                              LaunchScreen())));
                                },
                              ),
                              Divider()
                            ],
                          ),
                        ),
                        SlideTransition(
                          position: _drawerDetailsPosition,
                          child: FadeTransition(
                            opacity: ReverseAnimation(_drawerContentsOpacity),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                ListTile(
                                  leading:
                                      const Icon(Icons.add, color: Colors.blue),
                                  title: const Text('Add account'),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: const Icon(Icons.settings,
                                      color: Colors.blue),
                                  title: const Text('Manage accounts'),
                                  onTap: _showNotImplementedMessage,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  exchangeUser({@required int index}) {
    switch (index) {
      case 1:
        setState(() {
          _temporaryProfile = _currentProfile;
          _currentProfile = _user1Profile;
          _user1Profile = _user2Profile;
          _user2Profile = _temporaryProfile;
        });
        break;
      case 2:
        setState(() {
          _temporaryProfile = _currentProfile;
          _currentProfile = _user2Profile;
          _user2Profile = _temporaryProfile;
        });
        break;
      default:
    }
  }

  void _showNotImplementedMessage() {
    Navigator.pop(context); // Dismiss the drawer.
    _scaffoldKey.currentState.showSnackBar(
        const SnackBar(content: Text("The drawer's items don't do anything")));
  }
}
