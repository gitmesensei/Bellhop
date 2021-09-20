import 'dart:io';

import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kwik/loading.dart';
import 'package:kwik/screens/bookings.dart';
import 'package:kwik/screens/invite_and_earn.dart';
import 'package:kwik/screens/need_help.dart';
import 'package:kwik/screens/saved_hotels.dart';

import 'app_theme.dart';
import 'hotel_booking/hotel_app_theme.dart';
import 'screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
        indicatorColor: Colors.grey.shade300,
      ),
      home: Loading(),
    );
  }
}

class MyNavPage extends StatefulWidget {
  @override
  _MyNavPageState createState() => _MyNavPageState();
}

class _MyNavPageState extends State<MyNavPage> {

  int currentPage = 2;
  final List<Widget> _pages = [
    SavedHotels(),
    Booking(),
    MyHomePage(),
    InviteAndEarn(),
    NeedHelp()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[currentPage],
      bottomNavigationBar:CircleBottomNavigation(
        initialSelection: currentPage,
        circleColor: Color(0xff5CE1E6),
        inactiveIconColor: Colors.grey,
        circleSize: 60,
        barHeight: 50,

        tabs: [
          TabData(icon: Icons.favorite_border_outlined,iconSize: 25),
          TabData(icon: Icons.work_outline_outlined,iconSize: 25),
          TabData(icon: Icons.home_outlined,iconSize: 25),
          TabData(icon: Icons.people_outline,iconSize: 25),
          TabData(icon: Icons.message_outlined,iconSize: 25),

        ],
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}



