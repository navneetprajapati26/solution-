import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:solution/utils/services_card.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ServicesCard(
                        service_name: "Lawyers",
                        service_logo: "assets/png/justice_png_logo.png",
                        coler: 0xFF343434,
                        route: () { },
                      );
                    }),
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
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Text("lawyers",style: TextStyle(color: Colors.white70),),
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
