import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  double height;
  double width;
  NeuBox({Key? key,required this.height, required this.width, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(8),
      child: Center(child: child,),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          //bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: Offset(5,5),
          ),

          //top left
          BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5,-5),
          ),
        ],
      ),
    );
  }
}
