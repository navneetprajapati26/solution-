import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/neomorphism/neomorphism_box.dart';
import '../login/login.dart';

class Sign_upScreen extends StatefulWidget {
  const Sign_upScreen({Key? key}) : super(key: key);

  @override
  State<Sign_upScreen> createState() => _Sign_upScreenState();
}

class _Sign_upScreenState extends State<Sign_upScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //todo: Name filed
              Padding(
                padding: const EdgeInsets.only(left: 18,top: 9,right: 18,bottom: 9),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Name"),
                ),
              ),
              //todo: Email filed
              Padding(
                padding: const EdgeInsets.only(left: 18,top: 9,right: 18,bottom: 9),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Email"),
                ),
              ),
              //todo: password filed
              Padding(
                padding: const EdgeInsets.only(left: 18,top: 9,right: 18,bottom: 9),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Password"),
                ),
              ),
              //todo: Conform Password filed
              Padding(
                padding: const EdgeInsets.only(left: 18,top: 9,right: 18,bottom: 18),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Conform Password"),
                ),
              ),

              CupertinoButton(
                onPressed: () {
                  //todo: SignUp btn in Signup

                },
                child: NeuBox(
                  height: 50,
                  width: 350,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "SignUP",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),

              CupertinoButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Alredy have an account "),
                      Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  onPressed: () {
                    //todo: Sign UP btn
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),);
                  })
            ],
          ),
        )
    );
  }
}
