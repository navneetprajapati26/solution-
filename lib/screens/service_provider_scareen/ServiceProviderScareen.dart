import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';

import '../../utils/neomorphism/neomorphism_box.dart';

class serviceProviderScareen extends StatelessWidget {
  const serviceProviderScareen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xFF343434),
        title: Text(
          "Raj Narayana Singh",
          style: TextStyle(color: Colors.grey[300]),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.SIZE_DEFAULT,
            ),
            Icon(
              Icons.account_circle_rounded,
              color: Color(0xFF343434),
              size: 170,
            ),
            SizedBox(
              height: Dimensions.SIZE_DEFAULT,
            ),
            //todo: Discription
            Text(
              "Discription",
              style: TextStyle(
                  fontSize: Dimensions.SIZE_EXTRA_LARGE,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Dimensions.SIZE_SMALL,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes.",
                style: TextStyle(
                    fontSize: Dimensions.SIZE_DEFAULT,
                    //fontWeight: FontWeight.bold

                ),
              ),
            ),
            //todo: Information
            Padding(
              padding: const EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //todo:type of spaselty
                  Padding(
                    padding: const EdgeInsets.only(
                        left: Dimensions.SIZE_EXTRA_SMALL,
                        right: Dimensions.SIZE_EXTRA_SMALL,
                        bottom: Dimensions.SIZE_EXTRA_SMALL),
                    child: Text(
                      "Criminal, Constitutional, Corporate",
                      style: TextStyle(
                        fontSize: Dimensions.SIZE_DEFAULT,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  //todo:language
                  Padding(
                    padding: const EdgeInsets.only(
                        left: Dimensions.SIZE_EXTRA_SMALL,
                        right: Dimensions.SIZE_EXTRA_SMALL,
                        bottom: Dimensions.SIZE_EXTRA_SMALL),
                    child: Text(
                      "Hindi, English, Bhojpuri",
                      style: TextStyle(
                          fontSize: Dimensions.SIZE_DEFAULT,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  //todo:Exp
                  Padding(
                    padding: const EdgeInsets.only(
                        left: Dimensions.SIZE_EXTRA_SMALL,
                        right: Dimensions.SIZE_EXTRA_SMALL,
                        bottom: Dimensions.SIZE_EXTRA_SMALL),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Exp: ",
                          style: TextStyle(
                              fontSize: Dimensions.SIZE_DEFAULT,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "10 Year",
                          style: TextStyle(
                              fontSize: Dimensions.SIZE_DEFAULT,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  //todo:Free time
                  Padding(
                    padding: const EdgeInsets.only(
                        left: Dimensions.SIZE_EXTRA_SMALL,
                        right: Dimensions.SIZE_EXTRA_SMALL,
                        bottom: Dimensions.SIZE_EXTRA_SMALL),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Free: ",
                          style: TextStyle(
                              fontSize: Dimensions.SIZE_DEFAULT,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "15 min",
                          style: TextStyle(
                              fontSize: Dimensions.SIZE_DEFAULT,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.SIZE_DEFAULT,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CupertinoButton(
                    onPressed: (){},
                    child: NeuBox(height: 65, width: 120, child: Container(
                      alignment: Alignment.center,
                      child: Text("Call",style: TextStyle(fontSize: Dimensions.SIZE_DEFAULT,color: Colors.black),),
                    )
                    )
                ),
                CupertinoButton(
                    onPressed: (){},
                    child: NeuBox(height: 65, width: 120, child: Container(
                      alignment: Alignment.center,
                      child: Text("Chat",style: TextStyle(fontSize: Dimensions.SIZE_DEFAULT,color: Colors.black),),
                    )
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
