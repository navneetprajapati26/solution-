import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solution/screens/auth/login/login.dart';
import 'package:solution/screens/home/home.dart';
import 'package:solution/screens/service/ServiceScreen.dart';
import 'package:solution/screens/service_provider_scareen/ServiceProviderScareen.dart';
import 'package:solution/screens/splash/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFFFFFF),
    statusBarColor: Color(0xFFFFFF),
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,

  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      // home: serviceProviderScareen(),
    );
  }
}
