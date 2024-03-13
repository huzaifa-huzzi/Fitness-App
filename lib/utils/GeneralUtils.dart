import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';



class GeneralUtils {

  static focusFtn(BuildContext context,FocusNode current,FocusNode next){
    current.unfocus();
    FocusScope.of(context).requestFocus(next);

  }

  static void flushBarMessage(String message,BuildContext context){
    showFlushbar(context: context, flushbar:Flushbar(
      titleColor: Colors.white,
      margin:const  EdgeInsets.symmetric(horizontal: 15),
      padding:const  EdgeInsets.all(15),
      message: message,
      flushbarPosition: FlushbarPosition.BOTTOM,
      flushbarStyle: FlushbarStyle.FLOATING,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
      backgroundColor: Colors.red,
      backgroundGradient:const  LinearGradient(colors: [Colors.blueGrey, Colors.black]),
      isDismissible: false,
      duration:const  Duration(seconds: 4),

    )
    );


  }




}