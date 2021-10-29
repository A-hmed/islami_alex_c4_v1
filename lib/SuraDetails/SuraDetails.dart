import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_alex_c4_v1/Home/Widgets/SuraName.dart';

import '../main.dart';

class SuraDetails extends StatefulWidget {
  static String ROUTE_NAME = 'sura details';

  @override
  _SuraDetailsState createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
   if(suraLines.length==0) readSuraFile('assets/content/' + args.index.toString() + '.txt');

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/back_ground.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(color: MyThemeData.colorAccent),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              args.suraName,
              style: TextStyle(
                  color: MyThemeData.colorAccent, fontWeight: FontWeight.bold),
            ),
          ),
          body:getMainView(),
    ));
  }
   Widget getMainView(){
    if(suraLines.length==0){
      return Center(child: CircularProgressIndicator());
    }else {
     return  Container(
       padding: EdgeInsets.all(16),
       margin: EdgeInsets.only(
           right: 16,
           left: 16,
          bottom: MediaQuery.of(context).size.height*.1
       ),
       decoration: BoxDecoration(
         color: Color.fromRGBO(255,255, 255, .7),
         borderRadius: BorderRadius.circular(16)
       ),
       
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Text(suraLines[index],
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 25
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                color: MyThemeData.colorPrimary,
                width: 2,
                height: 2,
              );
            },
            itemCount: suraLines.length),
      );
    }
   }
  void readSuraFile(String fileName) async {
    String suraContent = await rootBundle.loadString(fileName);
    print(suraContent);
    suraLines = suraContent.split('\n');
    setState(() {

    });
  }
}
