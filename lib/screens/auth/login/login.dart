import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/neomorphism/neomorphism_box.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //todo: login filed
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Email"),
              ),
            ),
            //todo: password filed
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Password"),
              ),
            ),
            CupertinoButton(
              onPressed: () {
                //todo: login btn
              },
              child: NeuBox(
                height: 50,
                width: 350,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),

            CupertinoButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont't have an account "),
                    Text(
                      "Sign UP",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onPressed: () {
                  //todo: Sign UP btn
                })
            //SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
