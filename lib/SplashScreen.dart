import 'package:flutter/material.dart';
import 'package:islami_alex_c4_v1/Home/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static String ROUTE_NAME='splash';
  @override
  Widget build(BuildContext context) {
    NavigateToHome(context,HomeScreen.ROUTE_NAME);
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset('assets/images/splash.png',fit: BoxFit.fill,)),
    );
  }
  void NavigateToHome(BuildContext context,String screenName){

     Future.delayed(Duration(seconds: 2,),(){
       Navigator.pushNamed(context,screenName );
     });

  }
}
