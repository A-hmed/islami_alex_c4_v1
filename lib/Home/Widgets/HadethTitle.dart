import 'package:flutter/material.dart';
import 'package:islami_alex_c4_v1/HadethDetails/HadethDetails.dart';
import 'package:islami_alex_c4_v1/Home/AhadethFragment.dart';
import 'package:islami_alex_c4_v1/SuraDetails/SuraDetails.dart';

class HadethName extends StatelessWidget {
   Hadeth hadeth;
  HadethName(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.ROUTE_NAME,
        arguments: hadeth
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(hadeth.title,textAlign: TextAlign.center,style: TextStyle(
            fontSize: 25
        ),),

      ),
    );
  }
}
