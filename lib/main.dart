import 'package:flutter/material.dart';
import 'package:islami_alex_c4_v1/Home/HomeScreen.dart';
import 'package:islami_alex_c4_v1/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     routes: {
        SplashScreen.ROUTE_NAME:(context)=>SplashScreen(),
       HomeScreen.ROUTE_NAME:(context)=>HomeScreen()
     },
      initialRoute:SplashScreen.ROUTE_NAME
    );
  }
}


