import 'package:dart_fitness_app/resources/RoundButton.dar.dart';
import 'package:dart_fitness_app/utils/Routes/Routes_Name.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image:const  DecorationImage(
                image: AssetImage('assets/images/women-1.png.jpg'),
                fit: BoxFit.fill,
                scale: 20,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.100),
                  spreadRadius: 100,
                  blurRadius: 100,
                  offset:const  Offset(10, 20),
                ),
              ],
            ),
            child: Padding(
              padding:const  EdgeInsets.only(top: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                   Padding(
                       padding:const  EdgeInsets.symmetric(horizontal: 60),
                       child: Text('The Perfect Fitness App',style: Theme.of(context).textTheme.titleLarge!.copyWith(),)),
                        const SizedBox(height: 20,),
                  RoundButton(title: 'Start Training', onpress: (){
                         Navigator.pushNamed(context, RouteName.homeScreen);
                  }),
                ],
              ),
            ),
          ),
    );
  }
}
