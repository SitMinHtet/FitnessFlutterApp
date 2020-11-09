import 'dart:developer';

import 'package:fitnessApp/contants.dart';
import 'package:fitnessApp/screens/activity_screen.dart';
import 'package:fitnessApp/screens/dashboard_screen.dart';
import 'package:fitnessApp/screens/metric_screen.dart';
import 'package:fitnessApp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;

  final tabs = [
    DashBoardScreen(),
    ActivityScreen(),
    MetricScreen(),
    Center(
      child: Text('User Profile'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(Icons.menu),
          color: CustomColors.kPrimaryColor,
          iconSize: 30,
          onPressed: () {

          },
        ),
        title: SvgPicture.asset(
            'assets/icons/dumble.svg',
            height: SizeConfig.blockSizeHorizontal*10,
            color: CustomColors.kPrimaryColor,
        ),
        centerTitle: true,
        actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications,
                size: 30,
                color: CustomColors.kPrimaryColor,
              ),
            )
        ],
      ),


      body: tabs[_currentIndex],


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: CustomColors.kPrimaryColor,
        onPressed: () {

        },
      ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/apps.svg',
              height: 30,
              color: Colors.grey,
            ),
            title: Container(),
            activeIcon: SvgPicture.asset(
              'assets/icons/apps.svg',
              height: 30,
              color: CustomColors.kPrimaryColor,
            )
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/clock.svg',
                height: 30,
                color: Colors.grey,
              ),
              title: Container(),
              activeIcon: SvgPicture.asset(
                'assets/icons/clock.svg',
                height: 30,
                color: CustomColors.kPrimaryColor,
              )
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/stats.svg',
                height: 30,
                color: Colors.grey,
              ),
              title: Container(),
              activeIcon: SvgPicture.asset(
                'assets/icons/stats.svg',
                height: 30,
                color: CustomColors.kPrimaryColor,
              )
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                height: 30,
                color: Colors.grey,
              ),
              title: Container(),
              activeIcon: SvgPicture.asset(
                'assets/icons/user.svg',
                height: 30,
                color: CustomColors.kPrimaryColor,
              )
          )
        ],
      ),

    );
  }
}
