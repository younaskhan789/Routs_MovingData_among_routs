

import 'package:flutter/material.dart';
import 'package:fuirstappp/home_screen.dart';
import 'package:fuirstappp/screen_Two.dart';
import 'package:fuirstappp/screen_three.dart';
import 'package:fuirstappp/utils/routs_name.dart';

class Routs {
  

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutsName.HomeScreen:
        return MaterialPageRoute(builder: (context)=> HomeScreen());
      case RoutsName.ScreenTwo:
        return MaterialPageRoute(builder: (context)=> ScreenTwo(data:settings.arguments as Map,));
      case RoutsName.ScreenThree:
        return MaterialPageRoute(builder: (context)=> ScreenThree());
      default :
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(child: Text("there is no screen found"),),
          );
        });
    }


  }
}

