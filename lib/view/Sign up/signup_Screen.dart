import 'package:dart_fitness_app/Provider/SignupProvider.dart';
import 'package:dart_fitness_app/resources/RoundButton.dar.dart';
import 'package:dart_fitness_app/utils/GeneralUtils.dart';
import 'package:flutter/material.dart';
import 'package:dart_fitness_app/resources/InpuTextFornField.dart';
import 'package:provider/provider.dart';


class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final _formkey = GlobalKey<FormState>();
  bool loading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocus= FocusNode();
  final passwordFocus = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const  EdgeInsets.only(top: 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text('Sign Up to Your Account',style: Theme.of(context).textTheme.displayMedium!.copyWith()),
               const SizedBox(height: 20,),
              Form(
                    key: _formkey,
                    child: Padding(
                      padding:const  EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          InputFormField(myController:emailController , focusNode:emailFocus , onfieldSubmitted:(_){
                           GeneralUtils.focusFtn(context,emailFocus,passwordFocus);
                          } , onValidator:(value){
                            return value.isEmpty ? 'enter email' : null ;
                          } , hint: 'Email', obsecreText: false, keyboraType: TextInputType.text),
                          const SizedBox(
                            height: 20,
                          ),
                          InputFormField(myController: passwordController, focusNode: passwordFocus, onfieldSubmitted: (_){}, onValidator: (value){
                            return value.isEmpty ? 'enter password' : null ;
                          }, hint: 'Password', obsecreText: false, keyboraType: TextInputType.text),
                        ],
                      ),
                    )

                ),
              const SizedBox(height:40),
              Consumer<SignupProvider>(builder: (context,provider,_){
                return   RoundButton(title: 'Sign up',loading: provider.loading ,onpress: ( ){
                  if(_formkey.currentState!.validate()){
                  }
                   provider.signUpFtn(emailController.text.toString(), passwordController.text.toString(), context);
                });
              })



            ]
          ),
        ),
      ),
    );
  }
}
