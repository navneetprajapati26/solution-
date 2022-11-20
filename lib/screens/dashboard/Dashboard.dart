import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../home/home.dart';
import '../likes/LikesScreen.dart';
import '../notification/NotificationScreen.dart';
import '../profile/profile.dart';
import '../wallet/WalletScreen.dart';
import 'dashboard_controller.dart';

class Dashboard extends StatelessWidget {
  DashboardController dashboardController = Get.put(DashboardController());
  Dashboard({Key? key}) : super(key: key);
  final screens = [
    HomeScreen(),
    LikesScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xFF343434),
        title: Text(
          "S O L U T I O N",
          style: TextStyle(
            color: Colors.grey[300],
          ),
        ),
        actions: [
          CupertinoButton(
              child: Icon(
                Icons.notifications,
                color: Colors.grey[300],
              ),
              onPressed: () {
                //todo: notification at home
                Get.to(()=>NotificationScreen());
              }),
          CupertinoButton(
              child: Icon(
                Icons.wallet,
                color: Colors.grey[300],
              ),
              onPressed: () {
                //todo: wallet Btn
                Get.to(()=>WalletScreen());
              })
        ],
      ),
      body: Obx(()=>IndexedStack(
        index: dashboardController.selectedIndex.value,
        children: screens,
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
            tabBorderRadius: 25,
            tabActiveBorder:
            Border.all(color: Colors.black, width: 0), // tab button border
            tabBorder:
            Border.all(color: Colors.grey, width: 1), // tab button border
            gap: 8, // the tab button gap between icon and text
            color: Colors.black, // unselected icon color
            activeColor: Colors.white, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
            Colors.grey.shade800, // selected tab background color
            padding: EdgeInsets.all(12),
            onTabChange: (value){
              dashboardController.changeIndex(value);
            },
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',

              ),
              GButton(
                //todo: Likes in Nav Bar
                icon: LineIcons.heart,
                text: 'Likes',

              ),
              GButton(
                icon: LineIcons.search,
                text: 'Search',

              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',

              )
            ]
        ),
      ),
    );
  }
}
