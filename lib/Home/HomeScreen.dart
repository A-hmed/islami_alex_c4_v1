import 'package:flutter/material.dart';
import 'package:islami_alex_c4_v1/Home/AhadethFragment.dart';
import 'package:islami_alex_c4_v1/Home/QuranFragment.dart';
import 'package:islami_alex_c4_v1/Home/RadioFragment.dart';
import 'package:islami_alex_c4_v1/Home/TasbehFragment.dart';
import 'package:islami_alex_c4_v1/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {

static String ROUTE_NAME='home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back_ground.png',),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(

          elevation: 0,
          backgroundColor:Theme.of(context).primaryColor,
          title: Text(AppLocalizations.of(context)!.islami,style: TextStyle(color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold),),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor:Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            onTap: (index){
              selectedIndex=index;
              setState(() {
              });
            },
            currentIndex: selectedIndex,
            selectedIconTheme: IconThemeData(color:MyThemeData.colorAccent),
            selectedLabelStyle: TextStyle(color: MyThemeData.colorAccent),
            selectedItemColor:MyThemeData.colorAccent ,
            showSelectedLabels: true,
            iconSize: 30,
            items: [
              BottomNavigationBarItem(
                  label: 'Quran',
                  icon:ImageIcon(AssetImage('assets/images/moshaf_gold.png')
                  ) ),
              BottomNavigationBarItem(
                  label: 'ahadeth',
                  icon:ImageIcon(AssetImage('assets/images/ahadeth.png')
                  ) ),
              BottomNavigationBarItem(
                  label: 'Tasbeh',
                  icon:ImageIcon(AssetImage('assets/images/sebha.png')
                  ) ),
              BottomNavigationBarItem(
                  label: 'Quran',
                  icon:ImageIcon(AssetImage('assets/images/radio.png')
                  ) )
            ],
          ),
        ),
        body:getMainFragment()
      ),
    );
  }
  Widget getMainFragment(){
    if(selectedIndex==0){
      return QuranFragment();
    }else  if(selectedIndex==1){
      return AhadethFragment();
    }else  if(selectedIndex==2){
      return TasbehFragment();
    }else  if(selectedIndex==3){
      return RadioFragment();
    }
    else return Container();
  }
}
