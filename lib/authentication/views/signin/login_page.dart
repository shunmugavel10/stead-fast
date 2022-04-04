import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:steadfast/api/api_repo.dart';
import 'package:steadfast/common/component/textField.dart';
import 'package:steadfast/common/component/textFormField.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  Text("sf_splashScreen_login",
                          style: Theme.of(context).textTheme.headline1)
                      .tr(),
                  SizedBox(
                    height: 56.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 56.w,

                        child: pinNumberField(context,"+65","Enter Valid Pin",pinCodeController),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: _width.w,

                          child:phoneNumberField(context,"Phone Number","Enter Valid phone number",phoneNumberController),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  PasswordField(hint: "password",controller: passwordController,error: "Enter correct password",),

                  SizedBox(
                    height: 56.h,
                  ),

                  FlatButton(child:loading ? CircularProgressIndicator() :
                  Text("sf_login_button1",
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),).tr(),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Theme.of(context).primaryColor)),
                    minWidth:MediaQuery.of(context).size.width,
                    height: (48).h,
                    color: Theme.of(context).primaryColor,
                    onPressed: () async {

                      if(_formKey.currentState!.validate()){
                        // setState(() {
                        //   loading = true;
                        // });
                        ApiRepo().loginNetwork(context, phoneNumberController.text, passwordController.text,);
                        
                         Modular.to.pushNamed('/verifyPhoneNumberPage');
                      }
                    },),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextButton(
                    child: Text("sf__msg_forgot_password",style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(color: Theme.of(context).colorScheme.primary),).tr(),
                    onPressed: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot_password()));
                      Modular.to.pushNamed('/forgotPassword');
                    },),

                  SizedBox(
                    height: 132.h,
                  ),
                  FlatButton(child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline,size:14,color:Theme.of(context).colorScheme.onSecondary ,),
                      SizedBox(width: 5,),
                      Text("sf_login_with_Email",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Theme.of(context).colorScheme.onSecondary),).tr(),
                    ],
                  ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Theme.of(context).colorScheme.onSecondary)),
                    minWidth:MediaQuery.of(context).size.width,
                    height: (48),
                    color: Theme.of(context).secondaryHeaderColor,
                    onPressed: () async {
                      Modular.to.pushNamed('/landingPage');
                    },),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("sf_splashScreen_Don't_have_an_account?",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    letterSpacing: 1.0))
                        .tr(),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: Text(
                        tr("sf_splashScreen_signup_button"),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                      onTap: () async {
                       
                      },
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
