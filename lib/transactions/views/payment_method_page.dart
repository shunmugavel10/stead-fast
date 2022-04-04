import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        centerTitle: true,
        title: Text(
          "Choose payment Method",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
        height: 64.h,
        width: 374.w,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.onSurface),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Image.asset(
                "assets/images/profile_page/payment_page.png",
                height: 20.h,
                width: 32.w,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Text("via QR Code",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: Radio(
               
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            
          ],
        ),
      ),
      SizedBox(height: 15.h,),
      Container(
        height: 64.h,
        width: 374.w,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.onSurface),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Image.asset(
                "assets/images/profile_page/payment_page.png",
                height: 20.h,
                width: 32.w,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Text("via UEN",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Padding(
              padding: const EdgeInsets.only(left:200),
              child: Radio(
               
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            
          ],
        ),
      ),
      SizedBox(height: 15.h,),
      Container(
        height: 64.h,
        width: 374.w,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.onSurface),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Icon(Icons.home_work_rounded)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 15),
              child: Text("Bank Transfer",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 175),
              child: Radio(
               
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            
          ],
        ),
      ),
      SizedBox(height: 400.h,),
      FlatButton(
                child: Text(
                  "Next",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                minWidth: MediaQuery.of(context).size.width,
                height: (48).h,
                color: Theme.of(context).primaryColor,
                onPressed: ()  {
                  Modular.to.pushNamed('/bankTransferPage');
                },
              ),
          ],
        ),
        ),
      ),
    );
  }
}