import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kwik/hotel_booking/hotel_app_theme.dart';

class InviteAndEarn extends StatefulWidget {
  @override
  _InviteAndEarnState createState() => _InviteAndEarnState();
}

class _InviteAndEarnState extends State<InviteAndEarn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HotelAppTheme.buildLightTheme().backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: HotelAppTheme.buildLightTheme().backgroundColor,
          automaticallyImplyLeading: false,
          title: Text(
            'Refer & Earn',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 40,right: 20),
                child: Text(
                  'Share the app to enter our lucky draw and\nget the chance to win a year worth of subscription from any of these\n streaming provider.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
              ),

              Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.black,
                  margin: EdgeInsets.only(left: 10, right: 10,top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: HotelAppTheme.buildLightTheme().primaryColor,
                                    width: 2),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/prime.png'))),
                          ),
                          Text(
                            'Amazon\nPrime',
                            style: TextStyle(
                                color: HotelAppTheme.buildLightTheme().primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 90,
                              height: 90,
                              margin: EdgeInsets.only(
                                  bottom: 10, left: 15, right: 15),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: HotelAppTheme.buildLightTheme().primaryColor,
                                      width: 2),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/netflix.jpg'))),
                            ),
                            Text(
                              'Netflix',
                              style: TextStyle(
                                  color: HotelAppTheme.buildLightTheme().primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: HotelAppTheme.buildLightTheme().primaryColor,
                                    width: 2),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/hbo.jpeg'))),
                          ),
                          Text(
                            'HBO\nMax',
                            style: TextStyle(
                                color: HotelAppTheme.buildLightTheme().primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 40,right: 20),
                child: Text(
                  'Hurry Up Now!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 180,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/offer.gif'))),
              ),

              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  color: HotelAppTheme.buildLightTheme().primaryColor,
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

                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 40,right: 10,bottom: 10),
                      child: Text(
                        'Your invite code',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'DEEP6453',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey,
                          ),
                          child: Text(
                            'Copy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),

                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin:EdgeInsets.all(20) ,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.lightGreenAccent.shade400,
                      ),
                      child: Row(
                        children: [

                          Icon(FontAwesomeIcons.whatsapp,color: Colors.white,),

                          SizedBox(width: 10,),

                          Text(
                            'Share via Whatsapp',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
