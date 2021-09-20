import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kwik/hotel_booking/hotel_app_theme.dart';
import 'package:kwik/login.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  AnimationController controller;

  @override
  void initState() {
    super.initState();
    startTime();
    controller = AnimationController(duration: Duration(seconds: 4), vsync: this);
  }

  void navigationPage() async {

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HotelAppTheme.buildLightTheme().primaryColor,
      child: SafeArea(
          child: Scaffold(
              backgroundColor: HotelAppTheme.buildLightTheme().primaryColor,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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

                    Container(
                      margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 20),
                      child: Text(
                        'BELLHOP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Theme(data: ThemeData(accentColor: Colors.white),
                      child: CircularProgressIndicator())
                    ),
                  ],
                ),
              ))),
    );
  }
}
