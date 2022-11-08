import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';

class ServicesCard extends StatelessWidget {
  String service_name;
  String service_logo;
  int coler = 0xFF0077FF;
  void Function() route;
  ServicesCard(
      {Key? key,
      required this.service_name,
      required this.service_logo,
      required this.coler,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.SIZE_SMALL,
          right: Dimensions.SIZE_SMALL,
          top: Dimensions.SIZE_SMALL,
          bottom: Dimensions.SIZE_LARGE),
      child: NeuBox(
          height: 130,
          width: 200,
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //SizedBox(height: Dimensions.SIZE_SMALL),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Dimensions.SIZE_SMALL,
                        left: Dimensions.SIZE_EXTRA_SMALL),
                    child: Text(
                      service_name,
                      style: TextStyle(
                          color: Color(coler),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.only(
                        left: Dimensions.SIZE_SMALL,
                        right: Dimensions.SIZE_EXTRA_SMALL,
                        top: Dimensions.SIZE_EXTRA_SMALL,
                        bottom: 0),
                    child: NeuBox(
                        height: 35,
                        width: 200,
                        child: Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Call top " + service_name,
                              style: TextStyle(
                                  color: Color(coler),
                                  fontSize: Dimensions.SIZE_DEFAULT),
                            ),
                            SizedBox(
                              width: Dimensions.SIZE_SMALL,
                            ),
                            Icon(
                              Icons.call,
                              color: Color(coler),
                              size: Dimensions.SIZE_DEFAULT,
                            )
                          ],
                        ))),
                    onPressed: () {
                      //todo: call top btn
                    },
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                    padding: EdgeInsets.only(right: Dimensions.SIZE_DEFAULT),
                    child: NeuBox(
                      height: 100,
                      width: 80,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset(
                              service_logo,
                              width: 60.0,
                              height: 60.0,
                            ),
                            SizedBox(
                              height: Dimensions.SIZE_EXTRA_SMALL,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "List",
                                  style: TextStyle(
                                      fontSize: Dimensions.SIZE_DEFAULT,
                                      color: Color(coler)),
                                ),
                                Icon(
                                  Icons.arrow_right_alt_rounded,
                                  size: Dimensions.SIZE_DEFAULT,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    onPressed: route,
                  ),
                  //SizedBox(height: Dimensions.SIZE_EXTRA_SMALL,)
                ],
              ),
            ],
          ))),
    );
  }
}
