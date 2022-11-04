import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "S O L U T I O N",
          style: TextStyle(
            color: Colors.grey[300],
          ),
        ),
        actions: [
          CupertinoButton(
              child: Icon(
                Icons.notifications,
                color: Colors.grey[300],
              ),
              onPressed: () {
                //todo: notification at home
              }),
          CupertinoButton(
              child: Icon(
                Icons.wallet,
                color: Colors.grey[300],
              ),
              onPressed: () {
                //todo: wallet at home
              })
        ],
      ),
      body: ListView.builder(
        itemCount: 7,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
            child: NeuBox(height: 130, width: 200, child: Container(child: Text("S O L U T I O N"),)),
          );
          }
      ),
    );
  }
}
