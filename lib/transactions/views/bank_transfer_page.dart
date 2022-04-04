import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steadfast/common/component/textFormField.dart';


class BankTransferPage extends StatefulWidget {
  BankTransferPage({Key? key}) : super(key: key);

  @override
  _BankTransferPageState createState() => _BankTransferPageState();
}

class _BankTransferPageState extends State<BankTransferPage> {
   final descriptionController = TextEditingController();
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
          "Bank Transfer",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bank Account Info", style: Theme.of(context).textTheme.subtitle2),
            SizedBox(height: 15.h,),
                    RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: ("AC Name:"),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary)),
                              TextSpan(
                                  text: "Steadfast",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                    ),
                            ]),
                            overflow: TextOverflow.ellipsis,
                          ),
                           SizedBox(height: 5.h,),
                           RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: ("AC No:"),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary)),
                              TextSpan(
                                  text: "1234567890",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                    ),
                            ]),
                            overflow: TextOverflow.ellipsis,
                          ),
                           SizedBox(height: 5.h,),
                           RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: ("UEN:"),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary)),
                              TextSpan(
                                  text: "201207298RFLB",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                    ),
                            ]),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5.h,),
                           RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: ("Reference No"),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary)),
                              TextSpan(
                                  text: "2101000013",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                    ),
                            ]),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 15.h,),
                          Text("Transaction Number", style: Theme.of(context)
                                      .textTheme
                                      .subtitle2),
                                       SizedBox(height: 15.h,),
                                       textFormField(context, "Enter Transaction No.", "error", descriptionController),
                                        SizedBox(height: 15.h,),
                                        Text("Upload Receipt",style: Theme.of(context)
                                      .textTheme
                                      .subtitle2 ),

                                      SizedBox(height: 15,),
                         DottedBorder(
                           child: Container(
                             height: 80.h,
                             width: 80.w,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: Center(
                               child: IconButton(onPressed: (){}, icon: Icon(Icons.file_upload_outlined, color: Theme.of(context).colorScheme.onSecondary,)),
                             ),
                           ),
                         ),
                         SizedBox(height: 250.h,),
                         FlatButton(
                child: Text(
                  "Submit",
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
                  // Modular.to.pushNamed('/paynowQrPage');

 Modular.to.pushNamed('/paynowQrPage');
                },
              ),

          ],
        ),
        ),
      ),
    );
  }
}

