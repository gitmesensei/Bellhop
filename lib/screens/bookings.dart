import 'package:flutter/material.dart';
import 'package:kwik/hotel_booking/hotel_app_theme.dart';
import 'package:kwik/hotel_booking/hotel_list_view.dart';
import 'package:kwik/hotel_booking/model/hotel_list_data.dart';
import 'package:kwik/screens/cancelled.dart';
import 'package:kwik/screens/completed.dart';
import 'package:kwik/screens/upcoming.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  TabController _controller;
  int index = 0;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(() {
      setState(() {
        index = _controller.index;
        print(index);
      });
    });
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
      color: HotelAppTheme.buildLightTheme().backgroundColor,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: HotelAppTheme.buildLightTheme().backgroundColor,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              indicatorColor: HotelAppTheme.buildLightTheme().primaryColor,
              onTap: (indexTap) {
                setState(() {
                  index = indexTap;
                });
              },
              controller: _controller,
              tabs: [
                Tab(
                  child: Center(
                    child: Row(
                      children: [
                        index == 0
                            ? Icon(
                                Icons.access_alarms_outlined,
                                color: HotelAppTheme.buildLightTheme()
                                    .primaryColor,
                                size: 22,
                              )
                            : Icon(
                                Icons.access_alarms_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                        index == 0
                            ? Text(
                                ' Upcoming',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: HotelAppTheme.buildLightTheme()
                                      .primaryColor,
                                  fontSize: 14,
                                ),
                              )
                            : Text(
                                ' Upcoming',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: index == 1
                              ? HotelAppTheme.buildLightTheme().primaryColor
                              : Colors.black,
                          size: 20,
                        ),
                        Text(
                          ' Completed',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: index == 1
                                ? HotelAppTheme.buildLightTheme().primaryColor
                                : Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.stop_circle_outlined,
                          color: index == 2
                              ? HotelAppTheme.buildLightTheme().primaryColor
                              : Colors.black,
                          size: 20,
                        ),
                        Text(
                          ' Cancelled',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: index == 2
                                ? HotelAppTheme.buildLightTheme().primaryColor
                                : Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              'Bookings',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          body: TabBarView(
              controller: _controller,
              children: [Upcoming(), Completed(), Cancelled()]),
        ),
      ),
    );
  }
}
