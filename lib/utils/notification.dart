import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';
class Notification_card extends StatelessWidget {
  const Notification_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black12)),
        child: Padding(
          padding:
           EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Color(0xFF343434),
                    size: 50,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
                    child: Text(
                      "Raj Narayana Singh",
                      style: TextStyle(
                          fontSize: Dimensions.SIZE_DEFAULT,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The Notification Panel is a place to quickly access alerts, notifications and shortcuts. The Notification Panel is at the top of your mobile device's screen. It is hidden in the screen but can be accessed by swiping your finger from the top of the screen to the bottom. It is accessible from any menu or application."
                  ,),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
