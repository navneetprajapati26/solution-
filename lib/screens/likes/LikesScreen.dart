import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../utils/dimensions.dart';
import '../../utils/neomorphism/neomorphism_box.dart';
import '../../utils/service_provider_card.dart';
import '../service_provider_scareen/ServiceProviderScareen.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key}) : super(key: key);

  // void dialog_raout() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return CustmDilogBox(
  //           hader_text: "Your current balance!",
  //           body_text: "200 ₹",
  //           Btn_1: () {},
  //           Btn_2: service_provider_scareen_raout,
  //         );
  //       });
  // }
  //
  // void service_provider_scareen_raout() {
  //   Navigator.pushReplacement(context,
  //       MaterialPageRoute(builder: (context) => serviceProviderScareen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                        dilog: (){
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
                        free: "15 min",
                        calls: "1532",
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
