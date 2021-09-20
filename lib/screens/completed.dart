import 'package:flutter/material.dart';
import 'package:kwik/hotel_booking/hotel_app_theme.dart';
import 'package:kwik/hotel_booking/hotel_list_view.dart';
import 'package:kwik/hotel_booking/model/hotel_list_data.dart';


class Completed extends StatefulWidget {
  @override
  _CompletedState createState() => _CompletedState();
}

class _CompletedState extends State<Completed>     with TickerProviderStateMixin {
  AnimationController animationController;
  List<HotelListData> hotelList = HotelListData.hotelList;
  final ScrollController _scrollController = ScrollController();

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            getListUI(),
          ],
        ),
      ),
    );
  }
  Widget getListUI() {
    return Container(
      color: HotelAppTheme.buildLightTheme().backgroundColor,
      child: ListView.builder(
        itemCount: hotelList.length,
        padding: const EdgeInsets.only(top: 8),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final int count = hotelList.length > 10 ? 10 : hotelList.length;
          final Animation<double> animation =
          Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              parent: animationController,
              curve: Interval((1 / count) * index, 1.0,
                  curve: Curves.fastOutSlowIn)));
          animationController.forward();
          return HotelListView(
            hotelData: hotelList[index],
            animation: animation,
            animationController: animationController,
          );
        },
      ),
    );
  }
}