import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qouran/model/sectionmodel.dart';

import '../../components/component.dart';

class AzakarScreen extends StatefulWidget {

  @override
  State<AzakarScreen> createState() => _AzakarScreenState();
}

class _AzakarScreenState extends State<AzakarScreen> {
  List <SectionModel>sections = [];
  @override
  void initState() {
    // TODO: implement initState
    loadsection();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment(-.2, 0),
              image: AssetImage(
                  'assets/Images/zar.jpg'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(itemBuilder: (context,index)=>buildSelectionItem(model: sections[index],context:context ),
            itemCount: sections.length,
            separatorBuilder: (context,index)=>const Divider(),
            physics: BouncingScrollPhysics(),
          ),
        ),
      ),
    );
  }

   loadsection()async {
    DefaultAssetBundle.of(context).loadString('assets/database/section.json').then((value) {
      var response = json.decode(value);
      response.forEach((section){
       SectionModel sectionModel = SectionModel.fromJson(section);
       sections.add(sectionModel);
      });
     setState(() {
       
     });
    }).catchError((error){
      print(error);
    });
   }
}
