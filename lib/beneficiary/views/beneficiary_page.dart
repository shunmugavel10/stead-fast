import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class BeneficiaryPage extends StatefulWidget {
  BeneficiaryPage({Key? key}) : super(key: key);

  @override
  _BeneficiaryPageState createState() => _BeneficiaryPageState();
}

class _BeneficiaryPageState extends State<BeneficiaryPage> {
  double _width = 374.w;
  double _height = 114.h;
  bool isExpanded = false;
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
          "sf_beneficiaryScreen_beneficiaryTitle",
          style: Theme.of(context).textTheme.subtitle2,
        ).tr(),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.background,),
        onPressed: () {
           Modular.to.pushNamed('/addBeneficiaryPage');
          // addProduct(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                height:isExpanded ? 128.h : 64.h,
                width: _width,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(8)),
                child: isExpanded
                    ? SingleChildScrollView(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                                      isExpanded = isExpanded ? false : true;
                                    });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 15),
                          child: Image.asset(
                            "assets/images/beneficiary_page/user_image.png",
                            height: 47.h,
                            width: 47.w,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("kerrin francis",
                                  style: Theme.of(context).textTheme.subtitle2),
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
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: ("Method:"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary)),
                                  TextSpan(
                                      text: " Bank Transfer",
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
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.grey[200],
                                    height: 35.h,
                                    width: 99.w,
                                    child: TextButton(
                                        onPressed: () {
                                         Modular.to.pushNamed('/transactionPageNew');
                                        },
                                        child: Text("sf_beneficiaryScreen_beneficiaryButton1",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2).tr()),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15, right: 15),
                                    child: Container(
                                      color: Colors.grey[200],
                                      height: 35.h,
                                      width: 50.w,
                                      child: TextButton(
                                          onPressed: () {
                                            addBeneficiary(context);
                                          },
                                          child: Text("sf_beneficiaryScreen_beneficiaryButton2",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2).tr()),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey[200],
                                    height: 35.h,
                                    width: 40.w,
                                    child: TextButton(
                                        onPressed: () {
                                           Modular.to.pushNamed('/editBeneficiaryPage');
                                        },
                                        child: Text("sf_beneficiaryScreen_beneficiaryButton3",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2).tr()),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Radio(
                            activeColor: Theme.of(context).colorScheme.primary,
                            value: 1,
                            groupValue: 1,
                            onChanged: (value) {
                              //  setState(() {
                              //           isExpanded = isExpanded ? false : true;
                              //         });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ) : 
      Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
      child: GestureDetector(
        onTap: () {
          setState(() {
                                      isExpanded = isExpanded ? false : true;
                                    });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 0),
              child: Image.asset(
                "assets/images/beneficiary_page/user_image.png",
                height: 40.h,
                width: 40.w,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ashraf Ms",
                      style: Theme.of(context).textTheme.subtitle2),
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
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {
                   
                },
                activeColor: Theme.of(context).colorScheme.onSecondary,
              ),
            )
          ],
        ),
      ))
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return listBeneficiaryCard(context);
                  }),
              SizedBox(
                height: 15.h,
              ),
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
                onPressed: () async {},
              ),
              
            ],
          ),
        ),
      ) 
    );
  }
}

Widget listBeneficiaryCard(
  BuildContext context,
) {
  Size size = MediaQuery.of(context).size;
  return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
      child: GestureDetector(
        onTap: () {
          // addBeneficiary(context);
        },
        child: Container(
          height: 64.h,
          width: 374.w,
          decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).colorScheme.onSurface),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Image.asset(
                  "assets/images/beneficiary_page/user_image.png",
                  height: 40.h,
                  width: 40.w,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ashraf Ms",
                        style: Theme.of(context).textTheme.subtitle2),
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
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {},
                  activeColor: Theme.of(context).colorScheme.onSecondary,
                ),
              )
            ],
          ),
        ),
      ));
}

addBeneficiary(context) {
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
              width: 360.w,
              height: 556.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Center(
                      child: Text("Beneficiary Details",
                          style: Theme.of(context).textTheme.headline5),
                    ),
                    SizedBox(height: 20.h,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 35, right: 35, bottom: 15, top: 25),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Name",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("Ashraf Ms",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1)
                                    ],
                                  ),
                                  SizedBox(
                                    width: 52.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Contact number",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("+913659856895",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Delivery Method",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("Bank account",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Bank/Provider",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("HDFC bank",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Account Number",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("213658497854",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Relationship",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("Relationsip",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("IFSC code",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("FH58497854",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Correspondence",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("Syndicate bank",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Address",
                                      style:
                                          Theme.of(context).textTheme.caption),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                      "Lorem Ipsum has been the industry standard dummy text Lorem Ipsum has been the industry standard dummy text",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                     Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ignore: deprecated_member_use
              FlatButton(
                child: Text(
                  "Cancel",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                minWidth: 100.w,
                height: 32.h,
                color: Theme.of(context).colorScheme.onBackground,
                onPressed: ()  {
                  // Modular.to.pushNamed('/paymentPage');
                  Navigator.pop(context);
                },
              ),

            // ignore: deprecated_member_use
              FlatButton(
                child: Text(
                  "Edit",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                minWidth: 100.w,
                height: 32.h,
                color: Theme.of(context).primaryColor,
                onPressed: ()  {
                  // Modular.to.pushNamed('/paymentPage');
                },
              ),
          ],
        ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
