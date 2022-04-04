import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget textFormBeneficiaryField(BuildContext context,String hint,String error,controller){

  return Container(
    height: 44.h,
    width: 338.w,
    decoration: BoxDecoration(
      border: Border.all(color: Theme.of(context).colorScheme.onSecondary),
      borderRadius: BorderRadius.circular(5)
    ),
    child: TextFormField(
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
    ),
  );
}