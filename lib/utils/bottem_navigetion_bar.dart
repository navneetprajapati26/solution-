import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottemNavBar extends StatelessWidget {
  void Function() home_BTN;
  void Function() likes_BTN;
  void Function() serch_BTN;
  void Function() profile_BTN;
  BottemNavBar(
      {Key? key,
      required this.home_BTN,
      required this.likes_BTN,
      required this.serch_BTN,
      required this.profile_BTN})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
        tabBorderRadius: 25,
        tabActiveBorder:
            Border.all(color: Colors.black, width: 0), // tab button border
        tabBorder:
            Border.all(color: Colors.grey, width: 1), // tab button border
        //tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
        //curve: Curves.easeOutExpo, // tab animation curves
        //duration: Duration(milliseconds: 900), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        //backgroundColor: Colors.white,
        color: Colors.black, // unselected icon color
        activeColor: Colors.white, // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor:
            Colors.grey.shade800, // selected tab background color
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
        padding: EdgeInsets.all(12),
        tabs: [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
            onPressed: home_BTN,
          ),
          GButton(
            //todo: Likes in Nav Bar
            icon: LineIcons.heart,
            text: 'Likes',
            onPressed: likes_BTN,
          ),
          GButton(
            icon: LineIcons.search,
            text: 'Search',
            onPressed: serch_BTN,
          ),
          GButton(
            icon: LineIcons.user,
            text: 'Profile',
            onPressed: profile_BTN,
          )
        ]);
  }
}
