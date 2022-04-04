import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steadfast/beneficiary/utilities/textfield_beneficiary.dart';
import 'package:easy_localization/easy_localization.dart';


class AddBeneficiaryPage extends StatefulWidget {
  AddBeneficiaryPage({Key? key}) : super(key: key);

  @override
  _AddBeneficiaryPageState createState() => _AddBeneficiaryPageState();
}

class _AddBeneficiaryPageState extends State<AddBeneficiaryPage> {
  final nameController = TextEditingController();
  String? dropDownValue = "India";
  bool selected = false;
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
          "sf_addbeneficiaryScreen_addbeneficiaryTitle",
          style: Theme.of(context).textTheme.subtitle2,
        ).tr(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 35, right: 35, top: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "sf_editbeneficiaryScreen_editbeneficiaryTitle1",
                style: Theme.of(context).textTheme.subtitle2,
              ).tr(),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle2",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "Name", "error", nameController),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle3",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "Contact number", "error", nameController),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle4",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 45.h,
                width: 338.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurface,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    isExpanded: true,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                    value: dropDownValue,
                    iconEnabledColor: Theme.of(context).colorScheme.primary,
                    items: <String>[
                      'India',
                      'UK',
                      'US',
                      'AUS',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (String? newValue) {
                      // do something here
                      setState(() {
                        dropDownValue = newValue;
                      });
                    },
                    underline: DropdownButtonHideUnderline(child: Container()),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle5" ,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 45.h,
                width: 338.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurface,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    isExpanded: true,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                    value: dropDownValue,
                    iconEnabledColor: Theme.of(context).colorScheme.primary,
                    items: <String>[
                      'India',
                      'UK',
                      'US',
                      'AUS',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (String? newValue) {
                      // do something here
                      setState(() {
                        dropDownValue = newValue;
                      });
                    },
                    underline: DropdownButtonHideUnderline(child: Container()),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle6",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 45.h,
                width: 338.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurface,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    isExpanded: true,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                    value: dropDownValue,
                    iconEnabledColor: Theme.of(context).colorScheme.primary,
                    items: <String>[
                      'India',
                      'UK',
                      'US',
                      'AUS',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (String? newValue) {
                      // do something here
                      setState(() {
                        dropDownValue = newValue;
                      });
                    },
                    underline: DropdownButtonHideUnderline(child: Container()),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle7",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "", "error", nameController),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle8",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 45.h,
                width: 338.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurface,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    isExpanded: true,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                    value: dropDownValue,
                    iconEnabledColor: Theme.of(context).colorScheme.primary,
                    items: <String>[
                      'India',
                      'UK',
                      'US',
                      'AUS',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (String? newValue) {
                      // do something here
                      setState(() {
                        dropDownValue = newValue;
                      });
                    },
                    underline: DropdownButtonHideUnderline(child: Container()),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle9",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "", "error", nameController),
               SizedBox(
                height: 15.h,
              ),
              Text(
                "sf_editbeneficiaryScreen_editbeneficiaryTitle10",
                style: Theme.of(context).textTheme.subtitle2,
              ).tr(),
               SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle11",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "", "error", nameController),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle12",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "", "error", nameController),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle15",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "", "error", nameController),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle13",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "", "error", nameController),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_editbeneficiaryScreen_editbeneficiaryTitle14",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary)).tr(),
              SizedBox(
                height: 10.h,
              ),
              textFormBeneficiaryField(context, "", "error", nameController),
 SizedBox(
                height: 15.h,
              ),
               FlatButton(
                 
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: Theme.of(context).colorScheme.onBackground,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "sf_addtbeneficiaryScreen_addbeneficiaryButton1",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(color: Colors.white),
                      ).tr(),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                minWidth: 338.w,
                height: 48.h,
                color: Theme.of(context).primaryColor,
                onPressed: ()  {
                  Modular.to.pushNamed('/editBeneficiaryPage');
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
