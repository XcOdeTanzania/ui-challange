import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge/projects/dotify/background.dart';
import 'package:ui_challenge/projects/dotify/browse_screen.dart';
import 'package:ui_challenge/style/themes.dart' as dotifyColors;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      scaffold: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
                      child: Container(
              height: 10,
              width: 10,
              child: Image.asset('assets/dotify/icons/back_btn.png'),
            ),
          ),
          title: Image.asset('assets/dotify/icons/dotify_icon.png'),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
                SizedBox(
                      height: 20,
                    ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Color(0xff334f8d),
                      child: FlatButton.icon(
                        color: Color(0xff334f8d),
                        textColor: Colors.white,
                        icon: Icon(
                          FontAwesomeIcons.facebookF,
                          size: 35,
                        ),
                        onPressed: () {},
                        label: Expanded(
                            child: Text('Login with facebook',
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'or',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Username',
                          prefixIcon: Image.asset(
                              'assets/dotify/icons/username_icon.png')),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          prefixIcon: Image.asset(
                              'assets/dotify/icons/password_icon.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlatButton(
                        child: Text(
                        'Forgot your password',
                        style: TextStyle(fontSize: 15, color: Color(0xff4A4A4A)),
                      ),
                      onPressed: (){},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: dotifyColors.Colors.dotifyPrimaryColor
                
                ,
                child: FlatButton(
                      child: Text('LOG IN',style: TextStyle(color: Colors.white, fontSize: 25),),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((BuildContext context) =>
                                    BrowseScreen())));
                      },
                    ),
              ),
            )
          ],
        ),
      ),

      ),
      sigmaX: 10,
      sigmaY: 10,
    );
  }
}
