import 'package:dart_fitness_app/resources/Colors.dart';
import 'package:dart_fitness_app/utils/GeneralUtils.dart';
import 'package:dart_fitness_app/utils/Routes/Routes_Name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class GetFit extends StatefulWidget {
  const GetFit({super.key});

  @override
  State<GetFit> createState() => _GetFitState();
}

class _GetFitState extends State<GetFit> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    return    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
             const  Icon(Icons.share),
              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
              InkWell(
                onTap: () {
                  auth.signOut().then((value) {
                    Navigator.pushNamed(context, RouteName.signup);
                    GeneralUtils.flushBarMessage('Logout Successful', context);
                  }).onError((error, stackTrace) {
                    GeneralUtils.flushBarMessage(error.toString(), context);
                  });
                },
                child: const Icon(Icons.logout),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top * 0.55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '4 Week fit Body',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.getFit);
                      },
                      child: Padding(
                        padding:const  EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Overview',
                          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.0,
                            decorationColor: AppColors.buttonColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                    Text(
                      'Review',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/women-3.png.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.10),
                  Text('Trainer', style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.20),
                  Text('Jane Doe', style: Theme.of(context).textTheme.displayMedium!.copyWith()),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.10),
                  Text('Duration', style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.10),
                  Text('35 minutes', style: Theme.of(context).textTheme.displayMedium!.copyWith()),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.10),
                  Text('Target Part', style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.10),
                  Text('Full body', style: Theme.of(context).textTheme.displayMedium!.copyWith()),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding:const  EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      children: [
                        Text(
                          'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.',
                          style: Theme.of(context).textTheme.displayMedium!.copyWith(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

