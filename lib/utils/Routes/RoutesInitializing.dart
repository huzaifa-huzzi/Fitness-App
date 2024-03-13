import 'package:dart_fitness_app/utils/Routes/Routes_Name.dart';
import 'package:dart_fitness_app/view/Get%20Fit%20Screen/GetFitScreen.dart';
import 'package:dart_fitness_app/view/Sign%20up/signup_Screen.dart';
import 'package:dart_fitness_app/view/set%20a%20goal/Set%20a%20goal.dart';
import 'package:dart_fitness_app/view/splash_Screen/splash_Screen.dart';
import 'package:dart_fitness_app/view/weight%20Loss/WeightLoss%20Screen.dart';
import 'package:flutter/material.dart';


class Routes {

  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.splashscreen :
      return  MaterialPageRoute(builder: (context) => const SplashScreen());

      case RouteName.homeScreen :
        return  MaterialPageRoute(builder: (context) => const HomeScreen());

      case RouteName.signup :
        return  MaterialPageRoute(builder: (context) => const SignUP());

      case RouteName.getFit :
        return  MaterialPageRoute(builder: (context) => const GetFit());

      case RouteName.weightLoss:
        return  MaterialPageRoute(builder: (context) => const WeightLoss());


      default : return MaterialPageRoute(builder: (_){
        return const Scaffold(
          body: Center(
            child: Text('No Route Find'),
          ),
        );
      });


    }




  }



}