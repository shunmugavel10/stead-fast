import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  router() async {

    Timer(Duration(seconds: 3), (){
     Modular.to.navigate('/signupPage');

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    router();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002856),
      body: Stack(children: [
        Align(
          alignment: AlignmentDirectional.center,
          child: SizedBox(
              width: 263,
              height: 172,
              child: Image.asset("assets/images/splash_screen/splash_screen_logo.png")),
        ),
      ]),
    );
  }
}
