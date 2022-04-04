import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = "INR";
    return Scaffold(
       appBar: AppBar(
        elevation: 2,
        leading: IconButton(onPressed: (){

           Modular.to.pushNamed('/profilePage');
        }, icon: Icon(Icons.person_outline_sharp)),
          backgroundColor: Theme.of(context).secondaryHeaderColor,
        centerTitle: true,
        title: Text("sf_homeScreen_homeTitle",style: Theme.of(context).textTheme.subtitle2,).tr(),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.h,
                width: 374.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.onBackground,
                    ],
                    end: const FractionalOffset(1.8, 1),
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "sf_homeScreen_homeTitle1",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground),
                        ).tr(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              r"$ 0 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground),
                            ),
                            FlatButton(
                              height: 28.h,
                              minWidth: 135.w,
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.lock_open_sharp,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text("sf_homeScreen_homeTitle2",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary)).tr(),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground)),
                              color: Colors.white,
                              splashColor:
                                  Theme.of(context).colorScheme.secondary,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text("sf_homeScreen_homeTitle3",
                  style: Theme.of(context).textTheme.subtitle2).tr(),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 64.h,
                width: 374.w,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onBackground,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onSurface),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "sf_homeScreen_homeTitle4",
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary),
                        ).tr(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "100.0 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                            ),
                            Text(
                              "SGD",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 64.h,
                width: 374.w,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onBackground,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onSurface),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "sf_homeScreen_homeTitle5",
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary),
                        ).tr(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "5,427.25 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                            ),
                            SizedBox(
                              height: 16.h,
                              child: DropdownButton<String>(
                                icon: Icon(Icons.keyboard_arrow_down_sharp),
                                isExpanded: false,
                                 style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary),
                        
          value: dropdownValue,
          iconEnabledColor: Theme.of(context).colorScheme.primary,
          items: <String>['INR','Dollar']
              .map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
                value: value,
                child:Text(value)
            );
          }).toList(),
          onChanged: (String? newValue){
            // do something here
            setState(() {
              dropdownValue = newValue;
            });
          },
          underline: DropdownButtonHideUnderline(child: Container()),
        ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              FlatButton(
                child: Text(
                  "sf_homeScreen_homeTitle6",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ).tr(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                minWidth: MediaQuery.of(context).size.width,
                height: (48).h,
                color: Theme.of(context).primaryColor,
                onPressed: () async {},
              ),
              //  SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("sf_homeScreen_homeTitle7",
                      style: Theme.of(context).textTheme.subtitle2).tr(),
                  TextButton(
                      onPressed: () {
                         
                      },
                      child: Text(
                        "sf_homeScreen_homeTitle8",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ).tr())
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return listCard(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listCard(
  BuildContext context,
) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Container(
      
      color: Theme.of(context).colorScheme.onBackground,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: ("A25656"),
                        style: Theme.of(context).textTheme.subtitle2),
                    TextSpan(
                        text: "(TXN ID)",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary)),
                  ]),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(r"$ 180.5", style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: ("A25656"),
                        style: Theme.of(context).textTheme.subtitle2),
                    TextSpan(
                        text: "(TXN ID)",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary)),
                  ]),
                  overflow: TextOverflow.ellipsis,
                ),
                Text("To INR",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary)),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
