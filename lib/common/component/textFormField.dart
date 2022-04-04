import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

Widget pinNumberField(BuildContext context,String hint,String error,controller){

  return TextFormField(
    keyboardType: TextInputType.phone,
    controller: controller,
    cursorColor: Theme.of(context).colorScheme.onPrimary,
    style:  Theme.of(context).textTheme.subtitle2!.copyWith(
        color: Theme.of(context).colorScheme.onPrimary),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left: 10,right: 10),

      border: OutlineInputBorder(
        borderSide:BorderSide(
            color:Theme.of(context).colorScheme.primary,width: 1,style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(6.0),
      ),
      hintText: tr(hint),
      hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: Theme.of(context).colorScheme.onSecondary),
    ),
    validator: (val) {
      if (val!.isEmpty) {
        return tr(error);
      }
      return null;
    },
  );
}


Widget phoneNumberField(BuildContext context,String hint,String error,controller){

  return TextFormField(
    keyboardType: TextInputType.phone,
    controller: controller,
    cursorColor: Theme.of(context).colorScheme.onPrimary,

    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left: 10,right: 10),

      border: OutlineInputBorder(
        borderSide:BorderSide(
            color:Theme.of(context).colorScheme.primary,width: 1,style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(6.0),
      ),
      hintText: tr(hint),
      hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: Theme.of(context).colorScheme.onSecondary),
    ),
   // onChanged: (formKey.currentState!.validate()),
    validator: (val) {
      print(val);
      if (val!.isEmpty) {

        return tr(error);
      }else if(val.length!=10){

        return tr(error);
      }
      return null;
    },
  );
}
// class PhoneNumberField extends StatefulWidget {
//   String? hint,error;
//   TextEditingController? controller;
//
//   PhoneNumberField({this.hint,this.error,this.controller,});
//   @override
//   _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
// }
//
// class _PhoneNumberFieldState extends State<PhoneNumberField> {
//  final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       Form(
//           key: _formKey,
//          child: TextFormField(
//           keyboardType: TextInputType.phone,
//           controller: widget.controller,
//           cursorColor: Theme.of(context).colorScheme.onPrimary,
//           style:  Theme.of(context).textTheme.subtitle2!.copyWith(
//               color: Theme.of(context).colorScheme.onPrimary),
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.only(left: 10,right: 10),
//
//             border: OutlineInputBorder(
//               borderSide:BorderSide(
//                   color:Theme.of(context).colorScheme.primary,width: 1,style: BorderStyle.solid),
//               borderRadius: BorderRadius.circular(6.0),
//             ),
//             hintText: tr( widget.hint!),
//             hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
//                 color: Theme.of(context).colorScheme.onSecondary),
//           ),
//           onChanged: (val){
//             _formKey.currentState!.validate();
//           },
//           validator: (val) {
//
//             if (val!.isEmpty) {
//
//               return tr( widget.error!);
//             }else if(val.length!=10){
//
//               return tr(widget.error!);
//             }
//             return null;
//           },
//
//     ),
//        );
//   }
// }

class PasswordField extends StatefulWidget {

  String? hint,error;
  TextEditingController? controller;
  PasswordField({Key? key,this.hint,this.controller,this.error}) : super(key: key);
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscure=true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      obscureText: isObscure,
      keyboardType: TextInputType.text,
      controller:  widget.controller,
      cursorColor: Colors.black,
      style:  Theme.of(context).textTheme.subtitle2!.copyWith(
          color: Theme.of(context).colorScheme.onPrimary),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10, right: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: widget.hint,
          hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Theme.of(context).colorScheme.onSecondary),
          suffixIcon: IconButton(
              icon: Icon(( isObscure == false)
                  ? Icons.visibility
                  : Icons.visibility_off_outlined,size:16,),
              onPressed: () {
                setState(() {
                 isObscure = !isObscure;
                });
              })),
      validator: (val) {
        if (val!.isEmpty) {
          return tr(widget.error!);
        }
        return null;
      },
    );
  }
}

Widget textFormField(BuildContext context,String hint,String error,controller){

  return TextFormField(
    // keyboardType: TextInputType.phone,
    controller: controller,
    cursorColor: Theme.of(context).colorScheme.onPrimary,

    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left: 10,right: 10),

      border: OutlineInputBorder(
        borderSide:BorderSide(
            color:Theme.of(context).colorScheme.primary,width: 1,style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(6.0),
      ),
      hintText: tr(hint),
      hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: Theme.of(context).colorScheme.onSecondary),
    ),
   // onChanged: (formKey.currentState!.validate()),
    validator: (val) {
      print(val);
      if (val!.isEmpty) {

        return tr(error);
      }
      return null;
    },
  );
}
