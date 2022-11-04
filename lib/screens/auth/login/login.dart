import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/screens/auth/sign_up/sign_up.dart';

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
              padding: const EdgeInsets.only(left: 18,top: 18,right: 18),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Password"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(
                        fontSize: 16
                          //fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                      //todo: Forget Password
                    },
                  )
                ],
              ),
            ),

            CupertinoButton(
              onPressed: () {
                //todo: login btn
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_upScreen()),);
              },
              child: NeuBox(
                height: 50,
                width: 350,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Login",
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
                    Text("Dont't have an account "),
                    Text(
                      "Sign UP",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onPressed: () {
                  //todo: Sign UP btn
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_upScreen()),);
                })
            //SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
