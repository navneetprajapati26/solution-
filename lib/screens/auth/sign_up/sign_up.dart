import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_balance,
                  size: 100,
                  color: Color(0xFF343434),
                ),
                //todo: Name filed
                Padding(
                  padding: const EdgeInsets.only(left: Dimensions.SIZE_DEFAULT,top: Dimensions.SIZE_SMALL,right: Dimensions.SIZE_DEFAULT,bottom: Dimensions.SIZE_SMALL),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: "Name"),
                  ),
                ),
                //todo: Email filed
                Padding(
                  padding: const EdgeInsets.only(left: Dimensions.SIZE_DEFAULT,top: Dimensions.SIZE_SMALL,right: Dimensions.SIZE_DEFAULT,bottom: Dimensions.SIZE_SMALL),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: "Email"),
                  ),
                ),
                //todo: password filed
                Padding(
                  padding: const EdgeInsets.only(left: Dimensions.SIZE_DEFAULT,top: Dimensions.SIZE_SMALL,right: Dimensions.SIZE_DEFAULT,bottom: Dimensions.SIZE_SMALL),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: "Password"),
                  ),
                ),
                //todo: Conform Password filed
                Padding(
                  padding: const EdgeInsets.only(left: Dimensions.SIZE_DEFAULT,top: Dimensions.SIZE_SMALL,right: Dimensions.SIZE_DEFAULT,bottom: Dimensions.SIZE_DEFAULT),
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
                        padding: const EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
                        child: Text(
                          "SignUP",
                          style: TextStyle(color: Color(0xFF343434),fontSize: Dimensions.SIZE_DEFAULT,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),

                CupertinoButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Alredy have an account ",
                          style: TextStyle(color: Color(0xFF343434),fontSize: Dimensions.SIZE_DEFAULT,),
                        ),
                        Text(
                          "Login",
                          style: TextStyle(color: Color(0xFF343434),fontSize: Dimensions.SIZE_DEFAULT,fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    onPressed: () {
                      //todo: Sign UP btn
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),);
                    })
              ],
            ),
          ),
        )
    );
  }
}
