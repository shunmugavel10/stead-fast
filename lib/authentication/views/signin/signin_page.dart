import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:steadfast/authentication/api/api_repo.dart';
import 'package:steadfast/common/component/textField.dart';
import 'package:steadfast/common/component/textFormField.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  List<Tab> statusTitleList = [
    Tab(
      child: Row(
        children: [Text(tr("Personal Details"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(tr("KYC Details"))],
      ),
    ),
  ];
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final nationalityController = TextEditingController();
  final emailController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final occupationController = TextEditingController();
  final addressLine1Controller = TextEditingController();
  final addressLine2Controller = TextEditingController();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 40,
            right: 40,
          ),
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
                  Text("Sign In as",
                          style: Theme.of(context).textTheme.headline1)
                      .tr(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text("Enter your personal details for register.",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary))
                      .tr(),
                  SizedBox(
                    height: 25.h,
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          labelStyle: Theme.of(context).textTheme.subtitle1,
                          isScrollable: true,
                          indicatorColor: Theme.of(context).primaryColor,
                          indicatorPadding: EdgeInsets.only(bottom: 15),
                          labelColor: Theme.of(context).primaryColor,
                          unselectedLabelColor: Colors.grey,
                          labelPadding:
                              EdgeInsets.only(bottom: 5, right: 25, left: 25),
                          unselectedLabelStyle:
                              Theme.of(context).textTheme.subtitle1,
                          tabs: statusTitleList,
                        ),
                        SizedBox(
                          height: 1400.h,
                          width: 370.w,
                          child: TabBarView(
                              //  physics: NeverScrollableScrollPhysics(),
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, bottom: 15, top: 20),
                                    child: Column(children: [
                                      textFormField(context, "First Name",
                                          "error", firstNameController),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "Last Name",
                                          "error", lastNameController),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      Container(
                                        height: 64.h,
                                        width: 334.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black12)),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: DateTimePicker(
                                            type: DateTimePickerType.date,
                                            dateMask: 'd MMM, yyyy',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSecondary),
                                            initialValue:
                                                DateTime.august.toString(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2100),
                                            icon: Icon(Icons.event),
                                            selectableDayPredicate: (date) {
                                              // Disable weekend days to select from the calendar
                                              if (date.weekday == 6 ||
                                                  date.weekday == 7) {
                                                return false;
                                              }
                                              return true;
                                            },
                                            onChanged: (val) => print(val),
                                            validator: (val) {
                                              print(val);
                                              return null;
                                            },
                                            onSaved: (val) => print(val),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "Address Line 1",
                                          "error", addressLine1Controller),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "Address Line 2",
                                          "error", addressLine2Controller),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "City", "error",
                                          cityController),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "State", "error",
                                          stateController),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "Nationality",
                                          "error", nationalityController),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "Occupation",
                                          "error", occupationController),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "email ID",
                                          "error", emailController),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      textFormField(context, "Mobile Number",
                                          "error", phoneNumberController),
                                           SizedBox(
                                        height: 25.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlatButton(
                                            child: Text(
                                              "Cancel",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2!
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary),
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                side: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor)),
                                            minWidth: 129.w,
                                            height: 44.h,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground,
                                            onPressed: () {
                                              // Modular.to.pushNamed('/paymentPage');
                                              Navigator.pop(context);
                                            },
                                          ),

                                          // ignore: deprecated_member_use
                                          FlatButton(
                                            child: Text(
                                              "Continue",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2!
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                side: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor)),
                                            minWidth: 129.w,
                                            height: 44.h,
                                            color:
                                                Theme.of(context).primaryColor,
                                            onPressed: () async {
                                               Modular.to.pushNamed('/');
                                            },
                                          ),
                                        ],
                                      ),
                                    ])),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ),
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
