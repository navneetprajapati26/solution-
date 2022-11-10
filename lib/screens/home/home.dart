import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/bottem_navigetion_bar.dart';
import '../../utils/services_card.dart';
import '../likes/LikesScreen.dart';
import '../service/ServiceScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void services_raout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ServicesScreen()));
  }

  void likes_raout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LikesScreen()));
  }

  List<String> Services_name = ["Astrologers", "Docter", "Lawyers"];
  List<String> Services_logo = [
    "assets/png/astrology_png_logo.png",
    "assets/png/doctor_png_logo.png",
    "assets/png/justice_png_logo.png"
  ];
  List<int> Services_color = [0xFF343434, 0xFF343434, 0xFF343434];

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
              }),
          CupertinoButton(
              child: Icon(
                Icons.wallet,
                color: Colors.grey[300],
              ),
              onPressed: () {
                //todo: wallet at home
              })
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Services_logo.length,
                itemBuilder: (context, index) {
                  return ServicesCard(
                      service_name: Services_name[index],
                      service_logo: Services_logo[index],
                      coler: Services_color[index],
                      route: services_raout);
                }),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottemNavBar(
          home_BTN: () {},
          likes_BTN: likes_raout,
          serch_BTN: () {},
          profile_BTN: () {},
        ),
      ),
    );
  }
}
