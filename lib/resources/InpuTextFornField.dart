import 'package:flutter/material.dart';



// ignore: must_be_immutable
class InputFormField extends StatelessWidget {
  final TextEditingController myController;
   final FocusNode focusNode;
   final FormFieldSetter onfieldSubmitted;
   final FormFieldValidator onValidator;
   final TextInputType keyboraType;
   final String hint;
   final bool obsecreText;
    bool enablt,autofocus;
   InputFormField({super.key,
  required this. myController,
    this.autofocus =false,
    required this.focusNode,
    required this.onfieldSubmitted,
    required this.onValidator,
    required this.hint,
    required this.obsecreText,
    this.enablt =false,
    required this.keyboraType,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      keyboardType: keyboraType,
      decoration:InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(),
      ),
      onFieldSubmitted: onfieldSubmitted,
      validator: onValidator,
    );
  }
}
