import 'package:dart_fitness_app/resources/Colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';



class RoundButton extends StatelessWidget {
  String title;
 final  VoidCallback onpress;
 bool loading ;
   RoundButton({super.key,required this.title,required this.onpress,this.loading =false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color:AppColors.buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child:Center(
          child:loading ?const  LoadingIndicator(indicatorType: Indicator.ballClipRotate)    : Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(),),
        ) ,
      ),
    );
  }
}
