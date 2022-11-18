import 'package:flutter/material.dart';

import '../../utils/bottem_navigetion_bar.dart';
import '../../utils/custm_dilog_box.dart';
import '../../utils/service_provider_card.dart';
import '../service_provider_scareen/ServiceProviderScareen.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xFF343434),
        title: Text(
          "Likes",
          style: TextStyle(color: Colors.grey[300]),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
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
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottemNavBar(
          home_BTN: () {},
          likes_BTN: () {},
          serch_BTN: () {},
          profile_BTN: () {},
        ),
      ),
    );
  }
}
