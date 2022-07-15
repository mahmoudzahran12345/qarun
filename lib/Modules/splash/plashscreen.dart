
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qouran/components/component.dart';

import '../azakar/azakarscreen.dart';
import '../home/homescreen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0,left: 50.0),
                      child: Column(
                        children: [
                          Lottie.asset("assets/Images/hh.json"),
                          const Text('المخطط الالكترونى',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0
                          ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0,),
                    Row(
                      children: [
                        const SizedBox(width: 20,),
                        shapehome(iconData: Icons.access_time_outlined, text: 'الورد اليومى', function: (){
                          moveTo(context, HomeScreen());

                        }),
                        const SizedBox(width: 20,),
                        shapehome(iconData: Icons.mic_rounded, text: 'تسميع القران', function: (){

                        }),

                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    Row(
                      children: [
                        const SizedBox(width: 20,),
                        shapehome(iconData: Icons.newspaper_outlined, text: 'مصحف التفسير', function: (){}),
                        const SizedBox(width: 20,),
                        shapehome(iconData: Icons.timer, text: 'اوقات الصلاه', function: (){}),


                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    Row(
                      children: [
                        const SizedBox(width: 20,),
                        shapehome(iconData: Icons.light_mode, text: 'الاذكار', function: (){
                          moveTo(context,  AzakarScreen());
                        }),
                        const SizedBox(width: 20,),
                        shapehome(iconData: Icons.compass_calibration, text: 'بوصله', function: (){}),


                      ],
                    ),


              ],
            ),
          ),
        ),
      )
    );

  }
}
