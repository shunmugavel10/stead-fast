import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steadfast/common/component/textFormField.dart';

class PaynowUenPage extends StatefulWidget {
  PaynowUenPage({Key? key}) : super(key: key);

  @override
  _PaynowUenPageState createState() => _PaynowUenPageState();
}

class _PaynowUenPageState extends State<PaynowUenPage> {
    
    bool isExpanded = false;
    double _width = 414.w;
  
    final transactionController = TextEditingController();
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
          "PayNow via UEN",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Unique Entity Number (UEN)",  style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Theme.of(context).colorScheme.onSecondary)),
            SizedBox(height: 15.h,),
          Container(
            height: 56.h,
            width: 374.w,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: 15, right: 15
                
                ),
               child: Text("201207298RTOP",  style: Theme.of(context).textTheme.headline5),),
                  Padding(padding: EdgeInsets.only( right: 15
                
                ),
                child:TextButton( onPressed: (){} , child: Text("Copy", style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Theme.of(context).colorScheme.onSecondary)))),

              ],
            ),
          ),
         
           SizedBox(height: 15.h,),
            Text("Your transfer reference No.",  style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Theme.of(context).colorScheme.onSecondary)),
            SizedBox(height: 15.h,),
          Container(
            height: 56.h,
            width: 374.w,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: 15, right: 15
                
                ),
               child: Text("DICN1101001312",  style: Theme.of(context).textTheme.headline5),),
                  Padding(padding: EdgeInsets.only( right: 15
                
                ),
                child:TextButton( onPressed: (){} , child: Text("Copy", style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Theme.of(context).colorScheme.onSecondary)))),

              ],
            ),
          ),
           Text("*Insert this number into Reference/Bill \nReference number", style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Theme.of(context).colorScheme.onSecondary)),
            Row(
                children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined, color: Theme.of(context).colorScheme.onSecondary, size: 18.h,)),
                    Text("Share", style: Theme.of(context).textTheme.caption!.copyWith(color: Theme.of(context).colorScheme.onSecondary)),
                    
                ],
              ),
             
       AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _width,
                height: isExpanded ? 228.h : 52.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onSecondary),
                    borderRadius: BorderRadius.circular(5)),
                child: isExpanded
                    ? SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Follow the instructions",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isExpanded = isExpanded ? false : true;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: [
                                  Text(
                                    "1",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                         .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Launch your banking app and tap on PayNow",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                               SizedBox(height: 8.h,),
                              Divider(height: 1.h,),
                               SizedBox(height: 10.h,),
                               Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: [
                                  Text(
                                    "2",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                         .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Select PayNow to UEN",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                               SizedBox(height: 10.h,),
                              Divider(height: 1.h,),
                               SizedBox(height: 10.h,),
                               Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: [
                                  Text(
                                    "3",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                         .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Enter the UEN given above",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Divider(height: 1.h,),
                               SizedBox(height: 8.h,),
                               Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: [
                                  Text(
                                    "4",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                         .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Enter your top-up amount and the transfer \nreference number",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h,),
                              Divider(height: 1.h,),
                               SizedBox(height: 8.h,),
                               Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                
                                children: [
                                  Text(
                                    "5",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                         .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Tap Transfer Now to complete the transaction",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h,),
                              
                            ],
                          ),
                        ),
                      )
                    : 
                    Padding(
                      padding: const EdgeInsets.only(left: 15,),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Follow the instructions",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    isExpanded = isExpanded ? false : true;
                                  });
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Theme.of(context).colorScheme.onPrimary,
                                )),
                          ],
                        ),
                    ),
              ),
              SizedBox(height: 15.h,),
            Text("Transaction Number", style: Theme.of(context).textTheme.subtitle2),
            SizedBox(height: 15.h,),
            textFormField(context, "Enter Transaction No.", "error", transactionController),
            SizedBox(height: 15.h,),
            Text("Upload Receipt", style: Theme.of(context).textTheme.subtitle2),
            SizedBox(height: 15.h,),
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
                          SizedBox(height: 100.h,),
                          // ignore: deprecated_member_use
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
                  successPopUp(context);
                 
                },
              ),
          ],
        ),),
      ),
    );
  }
}


successPopUp(context) {
   
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              padding: EdgeInsets.all(20),
              width: 294.w,
              height: 304.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Icon(
                            Icons.check_circle_rounded,
                            color: Colors.green,
                            size: 25,
                          ),
                        ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: Text(
                        "Transaction Successful!",
                        style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  Center(
                    child: FlatButton(
                child: Text(
                    "View Transactions",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(color: Theme.of(context).primaryColor)),
                minWidth: 184.w,
                height: (32).h,
                color: Theme.of(context).primaryColor,
                onPressed: ()  {
                   
                },
              ),
                  ),
                  Center(
                    child: TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Cancel", style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary))),
                  ) 
                   
                   
         
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
