import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_alex_c4_v1/Home/Widgets/HadethTitle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../main.dart';

class AhadethFragment extends StatefulWidget {

  @override
  _AhadethFragmentState createState() => _AhadethFragmentState();
}

class _AhadethFragmentState extends State<AhadethFragment> {
  List<Hadeth> allAhadeth=[];

  Widget build(BuildContext context) {
    if(allAhadeth.length==0)readHadethFileContent();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Image.asset('assets/images/hadethLogo.png')
          ),
          SizedBox(height: 12,),
          Container(
              padding:EdgeInsets.all(12) ,
              decoration: BoxDecoration(
                  border: Border.all(color:MyThemeData.colorPrimary,width: 2 )
              ),
              child: Text(AppLocalizations.of(context)!.hadeth,textAlign: TextAlign.center,style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25
              ),)),
          Expanded(flex: 7,
            child: ListView.separated(
                itemCount: allAhadeth.length ,
                separatorBuilder:(context,index){
                  return Container(
                    color: MyThemeData.colorPrimary,
                    width: 2,
                    height: 2,
                  );
                },
                itemBuilder: (context,index){
                  return HadethName(allAhadeth[index]);
                }),
          )
        ],
      ),
    );
  }

  void readHadethFileContent()async{
     String allAHadethContent = await rootBundle.loadString('assets/content/ahadeth.txt');
     List<String> AllAhadeth= allAHadethContent.split('#\r\n');
     List<Hadeth> allHadethList=[];
     for(int i=0;i<AllAhadeth.length;i++){
       String hadeth=AllAhadeth[i];
       List<String> singleHadethLines =hadeth.split('\n');
       String title=singleHadethLines[0];
       singleHadethLines.removeAt(0);
       allHadethList.add(Hadeth(title,singleHadethLines)) ;
     }
     allAhadeth=allHadethList;
     setState(() {

     });
  }
}
class Hadeth{
  String title;
  List<String> hadethContent;
  Hadeth(this.title,this.hadethContent);
}
