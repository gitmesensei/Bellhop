import 'package:flutter/material.dart';
import 'package:kwik/hotel_booking/hotel_home_screen.dart';

import 'model/cities_list_data.dart';

class CitiesNamesOnly extends StatelessWidget {
  const CitiesNamesOnly(
      {Key key,
        this.citiesData,
        this.animationController,
        this.animation,
        this.callback})
      : super(key: key);

  final VoidCallback callback;
  final CitiesListData citiesData;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HotelHomeScreen()));
          },
          leading: Text(citiesData.titleTxt,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        );
  }
}
