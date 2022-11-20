import 'package:flutter/material.dart';
import '../../utils/dimensions.dart';
class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xFF343434),
        title: Text(
          "Wallet",
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
              "First User",
              style: TextStyle(
                  fontSize: Dimensions.SIZE_EXTRA_LARGE,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Dimensions.SIZE_SMALL,),

            //todo: Information
            Padding(
              padding: const EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


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
                          "Balance : ",
                          style: TextStyle(
                              fontSize: Dimensions.SIZE_DEFAULT,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "200",
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
                          "Time: ",
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

          ],
        ),
      ),
    );
  }
}
