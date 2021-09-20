import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kwik/hotel_booking/hotel_app_theme.dart';
import 'package:kwik/main.dart';


class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  Image myImage;
  bool _loading=false;


  double _fixedPadding;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _fixedPadding = 20;
    return Container(
      color: HotelAppTheme.buildLightTheme().primaryColor,
      child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0,bottom: 0,left: 0),
                    height: 300,
                    decoration: BoxDecoration(
                      color: HotelAppTheme.buildLightTheme().primaryColor,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          offset: Offset(2, 2),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: 'loco',
                          child: Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.only(bottom: 20,),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 4.0,
                                    color: Colors.white,
                                    style: BorderStyle.solid),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1.0,
                                      color: Colors.black12,
                                      spreadRadius: 2.0)
                                ],
                                image: DecorationImage(
                                    image: AssetImage("assets/images/bellhop.png"), fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: Container(
                              child: Text(
                                'BELLHOP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black45,
                                        blurRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: _fixedPadding * 1.5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Welcome,',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Colors.black54,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your go to destination for booking hotels',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        color: Colors.black54,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 50),
                    child: ButtonTheme(
                      minWidth: 40,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        elevation: 5.0,
                        splashColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>MyNavPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Let's Go !",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        color: HotelAppTheme.buildLightTheme().primaryColor
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
                  )
      ),
    );
  }

}
