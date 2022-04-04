import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steadfast/common/component/textField.dart';
import 'package:steadfast/common/component/textFormField.dart';

class LedgerReportPage extends StatefulWidget {
  LedgerReportPage({Key? key}) : super(key: key);

  @override
  _LedgerReportPageState createState() => _LedgerReportPageState();
}

class _LedgerReportPageState extends State<LedgerReportPage> {
  double _width = 360.w;
  double _height = 114.h;
  bool isExpanded = false;
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
          "Ledger Reports",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("from",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary)),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 44.h,
                        width: 155.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.black26)),
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
                            initialValue: DateTime.now().toString(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                            icon: Icon(Icons.event),
                            selectableDayPredicate: (date) {
                              // Disable weekend days to select from the calendar
                              if (date.weekday == 6 || date.weekday == 7) {
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
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary)),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 44.h,
                        width: 155.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.black26)),
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
                            initialValue: DateTime.august.toString(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                            icon: Icon(Icons.event),
                            selectableDayPredicate: (date) {
                              // Disable weekend days to select from the calendar
                              if (date.weekday == 6 || date.weekday == 7) {
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
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _width,
                height: isExpanded ? 404.h : 114.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onSecondary),
                    borderRadius: BorderRadius.circular(5)),
                child: isExpanded
                    ? SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       SizedBox(height: 25.h,),
                                      Text("Ledger ID",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondary)),
                                                      SizedBox(height: 15.h,),
                                                     
                                                        
                                      Text(
                                        "Transaction ID",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                       SizedBox(height: 15.h,),
                                      Text(
                                        "Customer name",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                       SizedBox(height: 15.h,),
                                      Text(
                                        "Amount",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                       SizedBox(height: 15.h,),
                                      Text(
                                        "Type",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                       SizedBox(height: 15.h,),
                                      Text(
                                        "Narration",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                       SizedBox(height: 15.h,),
                                      Text(
                                        "Refer document",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                       SizedBox(height: 15.h,),
                                      Text(
                                        "Refer number",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                       SizedBox(height: 15.h,),
                                      Text(
                                        "Date",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 130),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("54121",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                        Text("A65462",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                        Text(r"Akash MN",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                        Text("584 USD",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                                 Text("Debit",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                                 Text("N/A",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                                 Text("Transaction",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                                 Text("27",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                 SizedBox(height: 15.h,),
                                                 Text("12/02/2021",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!),
                                                
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              ),
                               SizedBox(height: 15.h,),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isExpanded = isExpanded ? false : true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_up_sharp,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary,
                                  )),
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 15, top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Transaction ID",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary)),
                                                SizedBox(height: 5.h,),
                                Text(
                                  "Ledger ID",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary),
                                ),
                                 SizedBox(height: 5.h,),
                                Text(
                                  "Paid Amount",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary),
                                ),
                                 SizedBox(height: 5.h,),
                                Text(
                                  "Date",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary),
                                ),
                            
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("5624586958",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!),
                                           SizedBox(height: 5.h,),
                                  Text("455560",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!),
                                           SizedBox(height: 5.h,),
                                  Text(r"$ 565",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!),
                                           SizedBox(height: 5.h,),
                                  Text("12/02/2021",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isExpanded = isExpanded ? false : true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  )),
                            ),
                          ],
                        ),
                      ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ledgerListCard(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

Widget ledgerListCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transaction ID",
                        style: Theme.of(context).textTheme.bodyText1),
                    Text("5624586958",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ledger ID",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text("455560",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Paid Amount",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(r"$ 565",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date",
                      style: Theme.of(context).textTheme.bodyText1!,
                    ),
                    Text("12/02/2021",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
