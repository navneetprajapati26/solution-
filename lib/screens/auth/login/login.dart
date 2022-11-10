import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/screens/auth/sign_up/sign_up.dart';
import 'package:solution/utils/dimensions.dart';

import '../../../utils/neomorphism/neomorphism_box.dart';
import '../../home/home.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //todo: login filed
              Padding(
                padding: const EdgeInsets.all(Dimensions.SIZE_DEFAULT),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Email"),
                ),
              ),
              //todo: password filed
              Padding(
                padding: const EdgeInsets.only(left: Dimensions.SIZE_SMALL,top: Dimensions.SIZE_SMALL,right: Dimensions.SIZE_SMALL),
                child: TextField(
                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Password"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: Dimensions.SIZE_SMALL,right: Dimensions.SIZE_SMALL),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: const Text(
                        "Forget Password ?",
                        style: TextStyle(
                            color: Color(0xFF343434),
                          fontSize: Dimensions.SIZE_DEFAULT
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()),);
                },
                child: NeuBox(
                  height: 50,
                  width: 350,
                  child: Container(
                    child: const Padding(
                      padding: EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Color(0xFF343434),fontSize: Dimensions.SIZE_DEFAULT,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),

              CupertinoButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Dont't have an account ",style: TextStyle(color: Color(0xFF343434),fontSize: Dimensions.SIZE_DEFAULT,),),
                      Text(
                        "Sign UP",
                        style: TextStyle(color: Color(0xFF343434),fontSize: Dimensions.SIZE_DEFAULT,fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
