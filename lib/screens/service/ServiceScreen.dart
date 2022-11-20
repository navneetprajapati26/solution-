import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:solution/screens/home/home.dart';
import 'package:solution/utils/services_card.dart';
import '../../utils/dimensions.dart';
import '../../utils/neomorphism/neomorphism_box.dart';
import '../../utils/service_provider_card.dart';
import '../service_provider_scareen/ServiceProviderScareen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

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
                      return ServiceProvider(
                        dilog: (){
                          //todo: Dilog box
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
                        name: "Raj Narayana Singh",
                        spatiality: "Criminal, Constitutional, Corporate",
                        language: "Hindi, English, Bhojpuri",
                        exp: "10 Year",
                        charge: "5 ₹/min",
                        calls: "1532",
                      );
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
