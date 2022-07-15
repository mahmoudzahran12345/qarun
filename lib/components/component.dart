import 'package:flutter/material.dart';
import 'package:qouran/Modules/home/homescreen.dart';
import 'package:qouran/model/sectionmodel.dart';

import '../Modules/qureen/qurrenscreen2.dart';

void moveTo(context,widget)=>Navigator.push(context,
  MaterialPageRoute(builder:
      (context)=>widget
  ),);
Widget shapehome(
{
  required IconData iconData,
  required String text,
  required Function function
}
    )=>  Expanded(
  child: InkWell(
    onTap: (){
      return function();
    },
    child: Container(
      width: 150,
      height: 130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(iconData,color: Colors.white,size: 30),
          Text(text,style: TextStyle(color: Colors.white,fontSize: 20,),)
        ],
      ),
    ),
  ),
);
Widget buildSelectionItem({required SectionModel model,required BuildContext context})=>InkWell(
  onTap: (){
   //moveTo(context, HomeScreen(id: model.id as int,));
  },
  child:   Container(
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Center(child: Text(model.name as String,style: const TextStyle(fontSize: 30.0,color: Colors.purple),)),

  ),
);
Widget buildSelectionItemQureen({required SectionModel model,required BuildContext context})=>InkWell(
  onTap: (){
    //moveTo(context, qureenscreen2(id: model.id as int,));
  },
  child:   Container(
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Center(child: Text(model.name as String,style: TextStyle(fontSize: 30.0,color: Colors.purple),)),

  ),
);

Widget linearvater()=> Container(
  width: double.infinity,
  height: 5.0,
  color: Colors.grey,


);