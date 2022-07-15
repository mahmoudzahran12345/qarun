
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quran/quran.dart' as quran;

import '../../model/quren.dart';

class SurahPage extends StatelessWidget {
  final Surah surah;
   SurahPage({required this.surah});
  @override
  Widget build(BuildContext context) {
    int count = surah.versesCount;
    int index = surah.id;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body:
        ListView(children: [
          header(),
          const SizedBox(
            height: 5,
          ),
          SafeArea(
            minimum: EdgeInsets.all(15.0),
            child: RichText(
              textAlign: count <= 20 ? TextAlign.center : TextAlign.justify,
              text: TextSpan(
                children: [
                  for (var i = 1; i <= count; i++) ...{
                    TextSpan(
                      text: ' ' +
                          quran.getVerse(index, i, verseEndSymbol: false) +
                          ' ',
                      style: const TextStyle(
                        fontFamily: 'Kitab',
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                            '$i',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                            textScaleFactor: i.toString().length <= 2 ? 1 : .8,
                          ),
                          radius: 14,
                        ))
                  }
                ],
              ),
            ),
          ),
        ])
      ),
    );
  }

  Widget header() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /*Text(
          surah.arabicName,
          style: const TextStyle(
            fontFamily: 'Aldhabi',
            fontSize: 36,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),*/
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Image.asset("assets/Images/appbar1.jpg",fit: BoxFit.cover,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 14.0),
              child: Center(child: Text(surah.arabicName, style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
            ),

          ],
        ),

      ],
    );
  }
}

