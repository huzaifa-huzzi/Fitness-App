import 'package:dart_fitness_app/Services/sessionManager.dart';
import 'package:dart_fitness_app/utils/GeneralUtils.dart';
import 'package:dart_fitness_app/utils/Routes/Routes_Name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';



class SignupProvider with ChangeNotifier {
  final auth = FirebaseAuth.instance;
  final ref  = FirebaseDatabase.instance.ref().child('user');

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }


  void signUpFtn(String email,String password,BuildContext context) async {
    setLoading(true);
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password).then((value){
         Navigator.pushNamed(context, RouteName.homeScreen);
         SessionManager().userId = value.user!.uid.toString();
         GeneralUtils.flushBarMessage('Sign up Successful ', context);
         ref.child(value.user!.uid.toString()).set({
           'email':value.user!.uid.toString(),
           'password':password,
         }).then((value){
            setLoading(false);
         }).onError((error, stackTrace){
           GeneralUtils.flushBarMessage(error.toString(), context);
           setLoading(false);
         });
         setLoading(false);
      }).onError((error, stackTrace){
        GeneralUtils.flushBarMessage(error.toString(), context);
        setLoading(false);
      });


    }catch (e){
      GeneralUtils.flushBarMessage(e.toString(), context);
    }



  }





}