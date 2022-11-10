import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';

class CustmDilogBox extends StatelessWidget {
  void Function() Btn_1;
  void Function() Btn_2;
  String hader_text;
  String body_text;
  CustmDilogBox({Key? key,required this.hader_text,required this.body_text,required this.Btn_1,required this.Btn_2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.SIZE_DEFAULT),
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(Dimensions.SIZE_DEFAULT)),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Dimensions.SIZE_DEFAULT,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  hader_text,
                  style: TextStyle(
                      fontSize: Dimensions.SIZE_EXTRA_LARGE,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.SIZE_EXTRA_LARGE,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  body_text,
                  style: TextStyle(
                      fontSize: Dimensions.SIZE_OVER_LARGE,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.SIZE_DEFAULT,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: Btn_1,
                    child: NeuBox(height: 45, width: 100, child: Container(
                      alignment: Alignment.center,
                      child: Text("Add money",style: TextStyle(fontSize: Dimensions.SIZE_DEFAULT,color: Colors.black),),
                    )
                    )
                ),
                CupertinoButton(
                    onPressed: Btn_2,
                    child: NeuBox(height: 45, width: 100, child: Container(
                      alignment: Alignment.center,
                      child: Text("Continue",style: TextStyle(fontSize: Dimensions.SIZE_DEFAULT,color: Colors.black),),
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
