import 'package:flutter/material.dart';
import 'package:islami_alex_c4_v1/SuraDetails/SuraDetails.dart';

class SuraName extends StatelessWidget {

 String suraName; int index;
 SuraName(this.suraName,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.ROUTE_NAME,
            arguments:SuraDetailsArgs(suraName,index+1));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(suraName,textAlign: TextAlign.center,style: TextStyle(
          fontSize: 25
        ),),

      ),
    );
  }
}
class SuraDetailsArgs{
  String suraName;
  int index;
  SuraDetailsArgs(this.suraName,this.index);
}