import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/services_card.dart';
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

  List<String> Services_name = ["Astrologers", "Docter", "Lawyers"];
  List<String> Services_logo = [
    "assets/png/astrology_png_logo.png",
    "assets/png/doctor_png_logo.png",
    "assets/png/justice_png_logo.png"
  ];
  List<int> Services_color = [0xFF0077FF, 0xFF5CFC00, 0xFF343434];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
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
    );
  }
}
