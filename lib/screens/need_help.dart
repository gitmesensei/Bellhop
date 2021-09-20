import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kwik/hotel_booking/hotel_app_theme.dart';

class NeedHelp extends StatefulWidget {
  @override
  _NeedHelpState createState() => _NeedHelpState();
}

class _NeedHelpState extends State<NeedHelp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HotelAppTheme
          .buildLightTheme()
          .backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: HotelAppTheme
              .buildLightTheme()
              .backgroundColor,
          automaticallyImplyLeading: false,
          title: Text(
            'Need Help',
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
              Container(
                  width: 140,
                  height: 140,
                  child: ClipOval(
                      child: Image.asset(
                        'assets/images/acosdemega.jpg',
                        fit: BoxFit.cover,
                      ))),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Text(
                  ' Acosdemega Technology(OPC) PVT. LTD.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    letterSpacing: 2,
                    fontSize: 20,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,top: 50),
                child: Material(
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.globe),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Text(
                            'www.acosdemega.com',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              letterSpacing: 1,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Material(
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Text(
                            'contact@acosdemega.com',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              letterSpacing: 1,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Material(
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Text(
                            '+91-8527404034',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              letterSpacing: 1,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
