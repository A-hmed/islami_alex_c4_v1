import 'package:flutter/material.dart';
import 'package:islami_alex_c4_v1/Home/AhadethFragment.dart';

import '../main.dart';

class HadethDetails extends StatelessWidget {
  static String ROUTE_NAME='hadeth_details';
  @override
  Widget build(BuildContext context) {
    Hadeth args =ModalRoute.of(context)!.settings.arguments as Hadeth;
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
              args.title,
              style: TextStyle(
                  color: MyThemeData.colorAccent, fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
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
                  return Text(args.hadethContent[index],
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
                itemCount: args.hadethContent.length),
          ),
        ));
  }
}
