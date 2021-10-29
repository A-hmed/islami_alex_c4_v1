import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_alex_c4_v1/HadethDetails/HadethDetails.dart';
import 'package:islami_alex_c4_v1/Home/HomeScreen.dart';
import 'package:islami_alex_c4_v1/SplashScreen.dart';
import 'package:islami_alex_c4_v1/SuraDetails/SuraDetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyThemeData{
  static Color colorPrimary=Color.fromRGBO(183, 147, 95, 1.0);
  static Color colorAccent=Color.fromRGBO(76, 74, 74, 1.0);
  static Color colorPrimaryDark= Color(0xff141A2E);
  static Color colorAccentDark=Color.fromRGBO(183, 147, 95, 1.0);
}
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', ''), // English, no country code
          Locale('ar', ''), // Spanish, no country code
        ],
      locale:Locale('en', ''),
      theme: ThemeData(
        primaryColor: MyThemeData.colorPrimary,
        accentColor: MyThemeData.colorAccent
      ),
      darkTheme: ThemeData(
        primaryColor:MyThemeData.colorPrimaryDark,
        accentColor: MyThemeData.colorAccentDark
      ),
      themeMode:ThemeMode.light ,
      title: 'Flutter Demo',
     routes: {
        SplashScreen.ROUTE_NAME:(context)=>SplashScreen(),
       HomeScreen.ROUTE_NAME:(context)=>HomeScreen(),
       SuraDetails.ROUTE_NAME:(context)=>SuraDetails(),
       HadethDetails.ROUTE_NAME:(context)=>HadethDetails()
     },
      initialRoute:HomeScreen.ROUTE_NAME
    );
  }
}


