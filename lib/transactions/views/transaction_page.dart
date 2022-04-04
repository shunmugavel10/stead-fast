import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steadfast/common/component/textField.dart';
import 'package:steadfast/common/component/textFormField.dart';

class TransactionPage extends StatefulWidget {
  TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
   final descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        centerTitle: true,
        title: Text(
          "Enter transaction details",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Beneficiary details",
                  style: Theme.of(context).textTheme.subtitle2),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 64.h,
                width: 374.w,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Image.asset(
                        "assets/images/beneficiary_page/user_image.png",
                        height: 40.h,
                        width: 40.h,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("kerrin francis",
                              style: Theme.of(context).textTheme.bodyText1),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: ("SBI Bank"),
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary)),
                              TextSpan(
                                  text: "(AC 236598753986)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary)),
                            ]),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text("Enter transaction Amount",
                  style: Theme.of(context).textTheme.subtitle2),
              Row(
                children: [
                  Text("Normal", style: Theme.of(context).textTheme.bodyText1),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = true;
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Theme.of(context).colorScheme.primary,
                    activeColor: Theme.of(context).colorScheme.primary,
                  ),
                  Text("Inward",
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary)),
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Clear",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primary))),
                  )
                ],
              ),
              textFormField(context, "Send Currency" , "error", descriptionController),
              SizedBox(height: 15.h,),
               textFormField(context, "Receive Currency" , "error", descriptionController),
                SizedBox(height: 15.h,),
                textFormField(context, "FC Amount" , "error", descriptionController),
                 SizedBox(height: 15.h,),
                 textFormField(context, "Rate" , "error", descriptionController),
                  SizedBox(height: 15.h,),
                 textFormField(context, "SGD Amount" , "error", descriptionController),
                  SizedBox(height: 15.h,),
                 textFormField(context, "Service Charge" , "error", descriptionController),
                  SizedBox(height: 15.h,),
                 textFormField(context, "Paid Amount" , "error", descriptionController),
                  SizedBox(height: 15.h,),
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
                  Modular.to.pushNamed('/paymentPage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
