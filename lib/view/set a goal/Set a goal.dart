import 'package:dart_fitness_app/resources/Colors.dart';
import 'package:dart_fitness_app/resources/RoundButton.dar.dart';
import 'package:dart_fitness_app/utils/GeneralUtils.dart';
import 'package:dart_fitness_app/utils/Routes/Routes_Name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body:Container(
              height: double.infinity,
              width: double.infinity,
              decoration:const  BoxDecoration(
                color: Colors.black,
                image:  DecorationImage(image: AssetImage('assets/images/women-2.png.jpg'),fit: BoxFit.fill),
              ),
              child: Padding(
                padding:const  EdgeInsets.only(top: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Hi,Set a Goal !',style: Theme.of(context).textTheme.titleLarge!.copyWith(),),
                    const SizedBox(height: 20,),
                    Padding(
                      padding:const   EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                               InkWell(
                                 onTap : (){
                                        if(user != null){
                                          Navigator.pushNamed(context, RouteName.getFit);
                                        }else{
                                          GeneralUtils.flushBarMessage('Please Signup', context);
                                        }
                                         },
                                 child: Container(
                                    height: 200,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: AppColors.buttonColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const   Padding(
                                              padding: EdgeInsets.only(right: 20),
                                              child: Icon(FontAwesomeIcons.dumbbell,size: 80,color: Colors.white,)),
                                        const SizedBox(height: 10,),
                                        Padding(
                                            padding:const  EdgeInsets.only(left: 10),
                                            child: Text('Get Fit',style: Theme.of(context).textTheme.bodyMedium!.copyWith(),))
                                      ],
                                    ),
                                  ),
                               ),

                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
      
                              InkWell(
                                onTap: (){
                                  if(user != null){
                                    Navigator.pushNamed(context, RouteName.weightLoss);
                                  } else{
                                    GeneralUtils.flushBarMessage('Please First Sign up', context);
                                  }
                                },
                                child: Container(
                                  height: 200,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    color: AppColors.buttonColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                     const  Padding(
                                          padding:EdgeInsets.only(left: 5),
                                          child:   Icon(FontAwesomeIcons.weightScale,size: 80,color: Colors.white,)),
                                      const SizedBox(height: 10,),
                                      Padding(
                                          padding:const  EdgeInsets.only(left: 42),
                                          child: Text('Weight Loss',style: Theme.of(context).textTheme.bodyMedium!.copyWith(),))
                                    ],
                                  ),
                                ),
                              )
      
      
                            ],
                          ),
      
                        ],
                      ),
                    ),
                   const  SizedBox(
                      height: 20,
                    ),
                    RoundButton(title: 'Sign up', onpress: (){
                      Navigator.pushNamed(context, RouteName.signup);
                    }),
      
      
                  ],
                ),
              ),
            ),
      );
  }
}
