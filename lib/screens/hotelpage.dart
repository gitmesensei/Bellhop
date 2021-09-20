import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kwik/hotel_booking/calendar_popup_view.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class HotelPage extends StatefulWidget {
  String name, rating, place;

  HotelPage(this.name, this.rating, this.place);

  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<HotelPage> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));
  List<String> photos = [
    'assets/rooms/1.jpg',
    'assets/rooms/2.jpg',
    'assets/rooms/3.jpg',
    'assets/rooms/4.jpg',
    'assets/rooms/5.jpg',
    'assets/rooms/6.jpg',
  ];
  var tween2 = Tween(begin: Offset(0.0, 1.0), end: Offset.zero)
      .chain(CurveTween(curve: Curves.decelerate));

  bool isActive = true;

  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
  );

  void pageChanged(int index) {
    setState(() {
      this.bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 10), curve: Curves.easeIn);
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Screen1(),
        Screen2(),
        Screen3(),
        Screen4(),
        Screen5(),
        Screen6()
      ],
    );
  }
  final List<String> _listName=[
    'A.C',
    'Free WiFi',
    'Power Backup',
    'TV',
    'Geyser',
    'Elevator',
  ];
  final List<String> _listNearby=[
    'Metro Station',
    'City Mall',
    'Richard Children Park',
    'Bus Stand',
    'Restaurants',
  ];
  final List<dynamic> _listIcons=[
    Icons.all_inclusive_rounded,
    Icons.wifi,
    Icons.power_settings_new,
    Icons.tv,
    Icons.hot_tub_outlined,
    Icons.elevator_outlined,
  ];
  @override
  void initState() {
    _animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return new Container(
        child: SafeArea(
            child: Scaffold(
      body:NestedScrollView(headerSliverBuilder:(BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
              expandedHeight: 60,
              collapsedHeight: 60,
              floating: true,
              automaticallyImplyLeading: false,
              snap: true,
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              pinned: true,
              flexibleSpace:appBar()
          )
        ];
      }, body:  ListView(
        padding: EdgeInsets.all(0),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 450,
                child: buildPageView(),
              ),
              Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 420),
                    width: 150,
                    height: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        AnimatedContainer(
                          duration: Duration(milliseconds: 150),
                          height: bottomSelectedIndex == 0 ? 12 : 8,
                          width: bottomSelectedIndex == 0 ? 12 : 8,
                          decoration: BoxDecoration(
                              color: bottomSelectedIndex == 0
                                  ? Colors.white
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 150),
                          height: bottomSelectedIndex == 1 ? 12 : 8,
                          width: bottomSelectedIndex == 1 ? 12 : 8,
                          decoration: BoxDecoration(
                              color: bottomSelectedIndex == 1
                                  ? Colors.white
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 150),
                          height: bottomSelectedIndex == 2 ? 12 : 8,
                          width: bottomSelectedIndex == 2 ? 12 : 8,
                          decoration: BoxDecoration(
                              color: bottomSelectedIndex == 2
                                  ? Colors.white
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 150),
                          height: bottomSelectedIndex == 3 ? 12 : 8,
                          width: bottomSelectedIndex == 3 ? 12 : 8,
                          decoration: BoxDecoration(
                              color: bottomSelectedIndex == 3
                                  ? Colors.white
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 150),
                          height: bottomSelectedIndex == 4 ? 12 : 8,
                          width: bottomSelectedIndex == 4 ? 12 : 8,
                          decoration: BoxDecoration(
                              color: bottomSelectedIndex == 4
                                  ? Colors.white
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 150),
                          height: bottomSelectedIndex == 5 ? 12 : 8,
                          width: bottomSelectedIndex == 5 ? 12 : 8,
                          decoration: BoxDecoration(
                              color: bottomSelectedIndex == 5
                                  ? Colors.white
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 8),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey.shade400,
                ),
                SizedBox(width: 2.0),
                Text(
                  widget.rating,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(width: 4.0),
                //  SelectedPhoto(photoIndex: photoIndex, numberOfDots: photos.length)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 10, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Sanitised Hotels | 1000000+ Happy Cuatomers | BeachView ',
                  style: TextStyle(
                      color: Colors.cyan, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      widget.place,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '400m Away',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.offline_bolt, color: Colors.green),
                    SizedBox(width: 4.0),
                    Text(
                      'Booked by 20 users in past hour',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Hotel Description',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
                ReadMoreText(
                  "\nDid you know that we’ve got 2.5 Crore bookings since March 2020? And this is all thanks to the sanitisation & safety measures followed at our properties, from disinfecting surfaces with high-quality cleaning products and maintaining social distance to using protective gear and more."
                      "\n\n● Location"
                      "\n\nFantasy Stay in Kolkata is located on the 1st Ave Road in Bidhannagar. Places nearby this property are Bank of Maharashtra, BE Park, royal Job Academy and CAP Camp Island."
                      "\n\n● Special Features"
                      "\n\nThis hotel has simple rooms with a homely decor. Each room is spacious and provides a comfortable bed along with other amenities. The attached washrooms are clean and well maintained. Corridors in the hotel are clean and well-lit."
                      "\n\n● Amenities"
                      "\n\nAmenities offered to guests staying at this hotel are power backup, CCTV security and free Wi-Fi."
                      "\n\n● What's Nearby"
                      "\n\nEating joints and restaurants that serve delicious food are Annapurna Sweets, Hide Cafe, Baskin Robbins, The Steak Factory and Charcoal Eats.",
                  trimLines: 4,
                  colorClickableText: Colors.red,
                  style: TextStyle(color: Colors.black),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date Of Travel & Guests',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(Icons.edit,color: Colors.red,),
                        Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                getTimeDateUI(),
                Text(
                  'Amenities',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20.0),
                Wrap(
                  children:List.generate(_listName.length,
                          (index) =>
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(_listIcons[index],color: Colors.black54,),
                                  SizedBox(width: 5,),
                                  Text(
                                    _listName[index],
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                          ),
                            ))
                ),
                SizedBox(height: 25.0),
                Text(
                  "What's Nearby",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20.0),
                Wrap(
                    children:List.generate(_listNearby.length,
                            (index) =>
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                _listNearby[index],
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400),
                              ),
                            ))
                ),
                SizedBox(height: 25.0),
                Text(
                  "Pricing Details",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_offer_outlined,color: Colors.red,),
                        Text(
                          ' BELLHOP50 Coupon Applied',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '-₹599',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.check_box,color: Colors.green,),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Divider(height: 5,color: Colors.black,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.monetization_on,color: Colors.red,),
                        Text(
                          ' BELLHOP Money Applied',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '-₹89',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.check_box,color: Colors.green,),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Divider(height: 5,color: Colors.black,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Price to Pay',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '₹789',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: Material(
                    elevation: 2,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.green,
                    child:  InkWell(
                      splashColor: Colors.white,
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'Book Now & Pay Later',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Text(
                  "Policy & House Rules",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 0,),
                Text( "\n• Cancellation Policy."
                    "\n\n• Follow safety measures advised at hotels."
                    "\n\n• Please check travel advisory issued by the concerned giverment/local authorities before booking."
                    "\n\n• Couples are welcome"
                    "\n\n• Guest can check-in using local Id.",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400
                )
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
      ),bottomNavigationBar: Container(
              width: double.maxFinite,
              height: 80,
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: Offset(2, 2),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total :',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '  ₹789',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.green,
                    child:  InkWell(
                      splashColor: Colors.white,
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'Book Now & Pay Later',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    )
        )
    );
  }
  Widget getTimeDateUI() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 25,top: 5),
      child: Container(
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.white24,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        // setState(() {
                        //   isDatePopupOpen = true;
                        // });
                        showDemoDialog(context: context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 4, bottom: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Choose date',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '${DateFormat("dd, MMM").format(startDate)} - ${DateFormat("dd, MMM").format(endDate)}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white
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
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                width: 1,
                height: 42,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.white24,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 4, bottom: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Number of Rooms',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '1 Room - 2 Adults',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white
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
          ],
        ),
      ),
    );
  }
  void showDemoDialog({BuildContext context}) {
    showDialog<dynamic>(
      context: context,
      builder: (BuildContext context) => CalendarPopupView(
        barrierDismissible: true,
        minimumDate: DateTime.now(),
        //  maximumDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 10),
        initialEndDate: endDate,
        initialStartDate: startDate,
        onApplyClick: (DateTime startData, DateTime endData) {
          setState(() {
            if (startData != null && endData != null) {
              startDate = startData;
              endDate = endData;
            }
          });
        },
        onCancelClick: () {},
      ),
    );
  }
  Widget appBar() {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () => Navigator.pop(context)),
              ),
              Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  widget.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.pink,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }


  Widget Screen1() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photos[bottomSelectedIndex]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget Screen2() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photos[bottomSelectedIndex]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget Screen3() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photos[bottomSelectedIndex]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget Screen4() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photos[bottomSelectedIndex]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget Screen5() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photos[bottomSelectedIndex]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget Screen6() {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photos[bottomSelectedIndex]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
