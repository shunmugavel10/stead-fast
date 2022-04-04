import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:steadfast/common/component/textField.dart';
import 'package:steadfast/common/component/textFormField.dart';
import 'package:steadfast/profile_page/utilities/image_picker.dart';
import 'package:steadfast/profile_page/utilities/tab_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<File> selectedImages = [];
 
  File? file;
  List<Tab> statusTitleList = [
    Tab(
      child: Row(
        children: [Text(tr("sf_profileScreen_profiletitle"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(tr("sf_profileScreen_profiletitle2"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(tr("sf_profileScreen_profiletitle3"))],
      ),
    ),
  ];


  final descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 30,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 60, left: 90),
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage(
                          "assets/images/profile_page/profile_image.png"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Jacob Alexander",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onBackground,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("sf_profileScreen_profiletitle4",
                                      style:
                                          Theme.of(context).textTheme.caption).tr(),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text("DS26566656",
                                      style:
                                          Theme.of(context).textTheme.bodyText1)
                                ],
                              ),
                              SizedBox(
                                width: 52.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("sf_profileScreen_profiletitle5",
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption).tr(),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text("Individual",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("sf_profileScreen_profiletitle6",
                                      style:
                                          Theme.of(context).textTheme.caption).tr(),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text("Local",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                ],
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("sf_profileScreen_profiletitle7",
                                      style:
                                          Theme.of(context).textTheme.caption).tr(),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text("Abcdef@gmail.com",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
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
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 84.h,
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Theme.of(context).colorScheme.onBackground,
                        size: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "sf_profileScreen_profiletitle8 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground),
                            ).tr(),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              r"Payment Balance : $ 1500 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground),
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
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: deprecated_member_use
                    FlatButton(
                      height: 36.h,
                      minWidth: 176.w,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outlined,
                            color: Theme.of(context).colorScheme.primary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("sf_profileScreen_profiletitle9",
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
                              color: Theme.of(context).colorScheme.primary)),
                      color: Colors.white,
                      splashColor: Theme.of(context).colorScheme.secondary,
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      height: 36.h,
                      minWidth: 176.w,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Theme.of(context).colorScheme.primary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("sf_profileScreen_profiletitle10",
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
                              color: Theme.of(context).colorScheme.primary)),
                      color: Colors.white,
                      splashColor: Theme.of(context).colorScheme.secondary,
                    ),
                  ],
                ),
              ),
              DefaultTabController(
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
                      labelPadding:
                          EdgeInsets.only(bottom: 5, right: 25, left: 20),
                      unselectedLabelStyle:
                          Theme.of(context).textTheme.subtitle1,
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
                                color:
                                    Theme.of(context).colorScheme.onBackground,
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
                              height: 136.h,
                              width: 374.w,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 35,
                                        right: 35,
                                        bottom: 15,
                                        top: 25),
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
                                                Text("sf_profileScreen_profiletitle11",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption).tr(),
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
                                              padding: const EdgeInsets.only(
                                                  right: 35),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("sf_profileScreen_profiletitle12",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption).tr(),
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
                                                Text("sf_profileScreen_profiletitle13",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption).tr(),
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
                                              padding: const EdgeInsets.only(
                                                  right: 70),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("sf_profileScreen_profiletitle14",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption).tr(),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("sf_profileScreen_profiletitle15",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption).tr(),
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
                                                Text("sf_profileScreen_profiletitle16",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption).tr(),
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
                                              padding: const EdgeInsets.only(
                                                  right: 60),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("sf_profileScreen_profiletitle17",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .caption).tr(),
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
                                color:
                                    Theme.of(context).colorScheme.onBackground,
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
                              height: 136.h,
                              width: 374.w,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 35,
                                        right: 35,
                                        bottom: 15,
                                        top: 15),
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
                                                      child: Text("sf_profileScreen_profiletitle18",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText1).tr()),
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
                                                      child: Text("sf_profileScreen_profiletitle19",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText1).tr()),
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
                                                      child: Text("sf_profileScreen_profiletitle15",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText1).tr()),
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
                                                      child: Text("sf_profileScreen_profiletitle20",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText1).tr()),
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
                                color:
                                    Theme.of(context).colorScheme.onBackground,
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
                              height: 150.h,
                              width: 374.w,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 35,
                                        right: 35,
                                        bottom: 15,
                                        top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "sf_profileScreen_profiletitle22",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ).tr(),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        phoneNumberField(context, "", "",
                                            descriptionController),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 130),
                                          // child: AddImages(
                                          //   selectedImages: selectedImages,
                                          // ),
                                          child: FlatButton(
                                            height: 32.h,
                                            minWidth: 161.w,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .surface,
                                            onPressed: () async {
                                              // getImage();
                                              final pickedFile =
                                                  await ImagePicker().getImage(
                                                      source:
                                                          ImageSource.gallery);
                                              if (pickedFile != null) {
                                                setState(() {
                                                  selectedImages.add(
                                                      File(pickedFile.path));
                                                });
                                              } else {
                                                print('No image selected.');
                                              }
                                            },
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
                                                          color: Theme.of(
                                                                  context)
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
                                        SizedBox(
                                          height: 0,
                                          width: double.infinity,
                                          child: ListView.builder(
                                              itemCount: selectedImages.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Stack(children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5, right: 10),
                                                    width: 90.w,
                                                    height: 78.h,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      child: Image.file(
                                                        selectedImages[index],
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: GestureDetector(
                                                      child: Icon(
                                                        Icons.clear,
                                                        size: 24,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                      ),
                                                      onTap: () {
                                                        setState(() {
                                                          selectedImages
                                                              .removeAt(index);
                                                        });
                                                      },
                                                    ),
                                                  )
                                                ]);
                                              }),
                                        ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.spaceBetween,
                                        //   children: [
                                        //     Icon(
                                        //       Icons.image_outlined,
                                        //       color: Theme.of(context)
                                        //           .colorScheme
                                        //           .onSecondary,
                                        //       size: 50,
                                        //     ),
                                        //     Icon(
                                        //       Icons.image_outlined,
                                        //       color: Theme.of(context)
                                        //           .colorScheme
                                        //           .onSecondary,
                                        //       size: 50,
                                        //     ),
                                        //     Icon(
                                        //       Icons.image_outlined,
                                        //       color: Theme.of(context)
                                        //           .colorScheme
                                        //           .onSecondary,
                                        //       size: 50,
                                        //     ),
                                        //   ],
                                        // )
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
              SizedBox(
                height: 25.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
