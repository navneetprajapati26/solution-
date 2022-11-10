import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';

class CustmDilogBox extends StatelessWidget {
  const CustmDilogBox({Key? key}) : super(key: key);

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
                  "Your current balance!",
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
                  "200 ₹",
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
                  onPressed: (){
                    //todo: add Money btn
                  },
                    child: NeuBox(height: 45, width: 100, child: Container(
                      alignment: Alignment.center,
                      child: Text("Add money",style: TextStyle(fontSize: Dimensions.SIZE_DEFAULT,color: Colors.black),),
                    )
                    )
                ),
                CupertinoButton(
                    onPressed: (){
                      //todo: add Continue btn
                    },
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
