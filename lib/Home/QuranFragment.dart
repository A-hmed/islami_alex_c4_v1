import 'package:flutter/material.dart';
import 'package:islami_alex_c4_v1/Home/Widgets/SuraName.dart';
import 'package:islami_alex_c4_v1/main.dart';

class QuranFragment extends StatelessWidget {

  List<String> surasName=["الفاتحه", "البقرة", "آل عمران", "النساء", "المائدة", "الأنعام", "الأعراف", "الأنفال", "التوبة", "يونس", "هود"
    , "يوسف", "الرعد", "إبراهيم", "الحجر", "النحل", "الإسراء", "الكهف", "مريم", "طه", "الأنبياء", "الحج", "المؤمنون"
    , "النّور", "الفرقان", "الشعراء", "النّمل", "القصص", "العنكبوت", "الرّوم", "لقمان", "السجدة", "الأحزاب", "سبأ"
    , "فاطر", "يس", "الصافات", "ص", "الزمر", "غافر", "فصّلت", "الشورى", "الزخرف", "الدّخان", "الجاثية", "الأحقاف"
    , "محمد", "الفتح", "الحجرات", "ق", "الذاريات", "الطور", "النجم", "القمر", "الرحمن", "الواقعة", "الحديد", "المجادلة"
    , "الحشر", "الممتحنة", "الصف", "الجمعة", "المنافقون", "التغابن", "الطلاق", "التحريم", "الملك", "القلم", "الحاقة", "المعارج"
    , "نوح", "الجن", "المزّمّل", "المدّثر", "القيامة", "الإنسان", "المرسلات", "النبأ", "النازعات", "عبس", "التكوير", "الإنفطار"
    , "المطفّفين", "الإنشقاق", "البروج", "الطارق", "الأعلى", "الغاشية", "الفجر", "البلد", "الشمس", "الليل", "الضحى", "الشرح"
    , "التين", "العلق", "القدر", "البينة", "الزلزلة", "العاديات", "القارعة", "التكاثر", "العصر",
    "الهمزة", "الفيل", "قريش", "الماعون", "الكوثر", "الكافرون", "النصر", "المسد", "الإخلاص", "الفلق", "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
             flex: 3,
               child: Image.asset('assets/images/quran_logo.png')
           ),
          SizedBox(height: 12,),
          Container(
            padding:EdgeInsets.all(12) ,
             decoration: BoxDecoration(
               border: Border.all(color:MyThemeData.colorPrimary,width: 2 )
             ),
              child: Text('Sura Name',textAlign: TextAlign.center,style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25
              ),)),
          Expanded(flex: 7,
          child: ListView.separated(
            itemCount: surasName.length ,
              separatorBuilder:(context,index){
                return Container(
                  color: MyThemeData.colorPrimary,
                  width: 2,
                  height: 2,
                );
              },
              itemBuilder: (context,index){
           return SuraName(surasName[index],index);
          }),
          )
        ],
      ),
    );
  }

}
