import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:steadfast/common/component/textField.dart';
import 'package:steadfast/common/component/textFormField.dart';

class ConfirmOtpPage extends StatefulWidget {
  @override
  _ConfirmOtpPageState createState() => _ConfirmOtpPageState();
}

class _ConfirmOtpPageState extends State<ConfirmOtpPage> {
  final _formKey = GlobalKey<FormState>();
  final phoneNumberController = TextEditingController();
  final pinCodeController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    double _width= MediaQuery.of(context).size.width;

    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 40,
            right: 40,),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: SizedBox(
                        width: 123.w,
                        height: 80.h,
                        child: Image.asset("assets/images/logo.png")),
                  ),
                  SizedBox(
                    height: 64.h,
                  ),
                  Text("sf_otpConfirmScreen_otpConfirm",
                          style: Theme.of(context).textTheme.headline1)
                      .tr(),
                  SizedBox(
                    height: 20.h,
                  ),
                   Text("sf_otpConfirmScreen_otpConfirm_subtitle",
                          style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Theme.of(context).colorScheme.onSecondary))
                      .tr(),
                       SizedBox(
                    height: 56.h,
                  ),
                
                   PasswordField(hint: "Enter OTP",controller: passwordController,error: "Enter correct password",),
                 

                  SizedBox(
                    height: 56.h,
                  ),

                  FlatButton(child:loading ? CircularProgressIndicator() :
                  Text("sf_otpConfirmScreen_otpConfirmButton",
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),).tr(),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Theme.of(context).primaryColor)),
                    minWidth:MediaQuery.of(context).size.width,
                    height: (48).h,
                    color: Theme.of(context).primaryColor,
                    onPressed: () async {

                      if(_formKey.currentState!.validate()){
                        setState(() {
                          loading = true;
                        });
                        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>
                        //     Landing_page(address: add,)), (route) => false);
                         Modular.to.pushNamed('/createPasswordPage');
                      }
                    },),
                  SizedBox(
                    height: 20.h,
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
