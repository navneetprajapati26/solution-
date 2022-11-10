import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:solution/screens/home/home.dart';
import 'package:solution/utils/services_card.dart';

import '../../utils/custm_dilog_box.dart';
import '../../utils/service_provider_card.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  void dialog_raout() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustmDilogBox(
            hader_text: "Your current balance!",
            body_text: "200 ₹",
            Btn_1: () {},
            Btn_2: () {},
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xFF343434),
        title: Text(
          "Lawyers",
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
                  height: 50,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ServiceProvider(dilog: dialog_raout);
                    })
              ],
            ),
          ),
          Container(
            height: 50,
            color: Color(0xFF343434),
            alignment: Alignment.center,
            child: ListView.builder(
                //physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //height: 10,
                      // width: 80,
                      decoration: BoxDecoration(
                          //color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white70)),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "lawyers",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
