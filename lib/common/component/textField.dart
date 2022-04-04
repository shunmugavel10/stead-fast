import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';


Widget textField(BuildContext context,String title,hint,error,controller){

  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,style: Theme.of(context).textTheme.subtitle1,).tr(),
      TextFormField(
        controller:controller,
        cursorColor: Theme.of(context).primaryColor,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        style:Theme.of(context).textTheme.subtitle2,
        decoration: InputDecoration(
          hintText: tr(hint),
          hintStyle:Theme.of(context).textTheme.subtitle2!.copyWith(
              color:Theme.of(context).colorScheme.onSecondary),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor,width: 2,style: BorderStyle.solid),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,width:1,style: BorderStyle.solid),
          ),
        ),
        enableInteractiveSelection: true,
        validator: (val) {
          if (val!.isEmpty) {
            return tr(error);
          }
          return null;
        },
      ),
    ],);
}

Widget numberField(BuildContext context,String title,hint,error,controller){

  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,style: Theme.of(context).textTheme.subtitle1,).tr(),
      TextFormField(
        controller:controller,
        cursorColor: Theme.of(context).primaryColor,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.numberWithOptions(),
        style:Theme.of(context).textTheme.subtitle2,
        decoration: InputDecoration(
          hintText: tr(hint),
          hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Theme.of(context).colorScheme.onSecondary),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor,width: 2,style: BorderStyle.solid),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,width:1,style: BorderStyle.solid),
          ),
        ),
        enableInteractiveSelection: true,
        validator: (val) {
          if (val!.isEmpty) {
            return tr(error);
          }
          return null;
        },
      ),
    ],);
}


Widget textField1(BuildContext context,hint,error,controller){

  return TextFormField(
    controller:controller,
    cursorColor: Theme.of(context).primaryColor,
    textAlign: TextAlign.left,
    keyboardType: TextInputType.text,
    style:Theme.of(context).textTheme.subtitle2,
    decoration: InputDecoration(
      hintText: tr(hint),
      hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: Theme.of(context).colorScheme.onSecondary),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).primaryColor,width: 2,style: BorderStyle.solid),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey,width:1,style: BorderStyle.solid),
      ),
    ),
    enableInteractiveSelection: true,
    validator: (val) {
      if (val!.isEmpty) {
        return tr(error);
      }
      return null;
    },
  );
}