import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steadfast/common/component/textFormField.dart';

class TabBarProfilePage extends StatefulWidget {
  const TabBarProfilePage({Key? key}) : super(key: key);

  @override
  _TabBarProfilePageState createState() => _TabBarProfilePageState();
}

class _TabBarProfilePageState extends State<TabBarProfilePage> {
  List<Tab> statusTitleList = [
    Tab(
      child: Row(
        children: [Text(tr("Basic details"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(tr("KYC details"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(tr("Documents"))],
      ),
    ),
  ];
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              labelStyle: Theme.of(context).textTheme.subtitle1,
              isScrollable: true,
              indicatorColor: Theme.of(context).primaryColor,
              indicatorPadding: EdgeInsets.only(bottom: 15),
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.only(bottom: 5, right: 25, left: 20),
              unselectedLabelStyle: Theme.of(context).textTheme.subtitle1,
              tabs: statusTitleList,
            ),
            SizedBox(
              height: 280.h,
              width: 370.w,
              child: TabBarView(
                  //  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onBackground,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSecondary),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      height: 136.h,
                      width: 374.w,
                      child: Column(
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
                                        Text("Residence status",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("Abh45662",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1)
                                      ],
                                    ),
                                    SizedBox(
                                      width: 52.w,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35),
                                      child: Column(
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
                                        Text("Fax number",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("565686",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 70),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Nationality",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text("India",
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
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Expiry date ID",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("28/08/2022",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Date of birth",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text("26/05/1992",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onBackground,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSecondary),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      height: 136.h,
                      width: 374.w,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, right: 35, bottom: 15, top: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.image_outlined,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 110.w,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text("ID front",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.image_outlined,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 110.w,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text("ID back",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1)),
                                        )
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
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.image_outlined,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 110.w,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text("Address",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 110.w,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Text("Selfie",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onBackground,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSecondary),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      height: 150.h,
                      width: 374.w,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, right: 35, bottom: 15, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Description:",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                phoneNumberField(
                                    context, "", "", descriptionController),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 140),
                                  child: Container(
                                    height: 32.h,
                                    width: 161.w,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.drive_folder_upload,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                          size: 20,
                                        ),
                                        Text(
                                          "Upload",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onBackground),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.image_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                      size: 50,
                                    ),
                                    Icon(
                                      Icons.image_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                      size: 50,
                                    ),
                                    Icon(
                                      Icons.image_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                      size: 50,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
