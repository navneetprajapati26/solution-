import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/notification.dart';
import '../../utils/service_provider_card.dart';
import '../../utils/services_card.dart';
import '../likes/LikesScreen.dart';
import '../notification/NotificationScreen.dart';
import '../profile/profile.dart';
import '../service/ServiceScreen.dart';
import '../service_provider_scareen/ServiceProviderScareen.dart';
import '../wallet/WalletScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> Services_name = ["CA", "Astrologers", "Docter", "Lawyers"];

  List<String> Services_logo = [
    "assets/png/chartered_accountant.png",
    "assets/png/astrology_png_logo.png",
    "assets/png/doctor_png_logo.png",
    "assets/png/justice_png_logo.png"
  ];

  List<int> Services_color = [0xFF343434, 0xFF343434, 0xFF343434, 0xFF343434];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                      route: () {
                        Get.to(() => ServicesScreen());
                      });
                }),

            const Padding(
              padding: EdgeInsets.all(8.0),
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
                    dilog: () {
                      //todo:DilogBox
                      Get.defaultDialog(
                        backgroundColor: Colors.grey[300],
                        title: "Your current balance!",
                        middleText: "200 ₹",
                        confirm: Row(
                          children: [
                            CupertinoButton(
                                child: NeuBox(
                                    height: 45,
                                    width: 100,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Add money",
                                        style: TextStyle(
                                            fontSize: Dimensions.SIZE_DEFAULT,
                                            color: Colors.black),
                                      ),
                                    )),
                                onPressed: () {
                                  //todo:Add mony btn
                                }),
                            CupertinoButton(
                                child: NeuBox(
                                    height: 45,
                                    width: 100,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Continue",
                                        style: TextStyle(
                                            fontSize: Dimensions.SIZE_DEFAULT,
                                            color: Colors.black),
                                      ),
                                    )),
                                onPressed: () {
                                  Get.to(()=>serviceProviderScareen());
                                }
                            )
                          ],
                        ),
                      );
                    },
                    //dialog_raout,
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
    );
  }
}
