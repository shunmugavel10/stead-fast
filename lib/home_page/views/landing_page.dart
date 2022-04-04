import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steadfast/beneficiary/views/beneficiary_page.dart';
import 'package:steadfast/home_page/views/home_page.dart';
import 'package:steadfast/reports/views/ledger_report_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:steadfast/transactions/views/transaction_page.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  final PageController _pageController = PageController();
  int _currentindex = 0;
  var val=1;
  late Future<bool>? val1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: ClipRRect(
        //  borderRadius: BorderRadius.only(
        //    topRight: Radius.circular(cor),
        //    topLeft: Radius.circular(cor),
        // ),
        child: BottomNavigationBar(
          elevation: 50,
          backgroundColor:Theme.of(context).backgroundColor,
          currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedItemColor:Theme.of(context).primaryColor,
          onTap: (int index) {
            setState(() {
              _currentindex = index;
            });
            _pageController.jumpToPage(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("sf_homeScreen_homeTitle",style: Theme.of(context).textTheme.subtitle2).tr()),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.business_outlined,
                ),
                title: Text("sf_landingScreen_landingTitle2",style: Theme.of(context).textTheme.subtitle2).tr()),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.transfer_within_a_station_sharp,
                ),
                title: Text("sf_landingScreen_landingTitle3",style: Theme.of(context).textTheme.subtitle2).tr()),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart_outlined,
                ),
                title: Text("sf_landingScreen_landingTitle4",style: Theme.of(context).textTheme.subtitle2).tr()),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       FeatherIcons.user,
            //     ),
            //     title: Text("Profile",style: Theme.of(context).textTheme.subtitle2))
          ],
        ),
      ),
      body: PageView(
        allowImplicitScrolling: true,
        onPageChanged: (val){
          setState(() {
            _currentindex=_pageController.page!.round();
          });
        },
        controller: _pageController,
        children: [
          HomePage(),
          BeneficiaryPage(),
          TransactionPage(),
          LedgerReportPage()
        
        ],
      ),
    );
  } 
}
