import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kwik/hotel_booking/hotel_app_theme.dart';
import 'package:kwik/screens/city_search_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'model/cities_list_data.dart';

class CitiesListView extends StatelessWidget {
  const CitiesListView(
      {Key key,
        this.citiesData,
        this.animationController,
        this.animation,})
      : super(key: key);

  final CitiesListData citiesData;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation.value), 0.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.push<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) => CitySearchScreen(citiesData.titleTxt!='Near Me'?citiesData.titleTxt:'Near You'),
                        fullscreenDialog: true),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: ClipOval(
                          child: Image.asset(
                            citiesData.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Expanded(child: Text(citiesData.titleTxt,
                      textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                )
              ),
            ),
          ),
        );
      },
    );
  }
}
