import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[300],
      body: Center(child: Text("Search Screen Work is going on...",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
    );
  }
}
