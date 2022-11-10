import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/bottem_navigetion_bar.dart';
import '../../utils/custm_dilog_box.dart';
import '../../utils/service_provider_card.dart';
import '../../utils/services_card.dart';
import '../likes/LikesScreen.dart';
import '../service/ServiceScreen.dart';
import '../service_provider_scareen/ServiceProviderScareen.dart';

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

  void dialog_raout() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustmDilogBox(
            hader_text: "Your current balance!",
            body_text: "200 ₹",
            Btn_1: () {},
            Btn_2: service_provider_scareen_raout,
          );
        });
  }

  void service_provider_scareen_raout() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => serviceProviderScareen()));
  }

  List<String> Services_name = ["CA","Astrologers", "Docter", "Lawyers"];
  List<String> Services_logo = [
    "assets/png/chartered_accountant.png",
    "assets/png/astrology_png_logo.png",
    "assets/png/doctor_png_logo.png",
    "assets/png/justice_png_logo.png"
  ];
  List<int> Services_color = [0xFF343434,0xFF343434, 0xFF343434, 0xFF343434];

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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Most Loved Solution Provider ",
                style: TextStyle(
                    fontSize: Dimensions.SIZE_EXTRA_LARGE,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //ServiceProvider
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ServiceProvider(
                    dilog: dialog_raout,
                    name: "Raj Narayana Singh",
                    spatiality: "Criminal, Constitutional, Corporate",
                    language: "Hindi, English, Bhojpuri",
                    exp: "10 Year",
                    free: "15 min",
                    calls: "1532",
                  );
                })
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
