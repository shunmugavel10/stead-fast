
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart'as path_provider;
import 'package:steadfast/themes/provider/theme_provider.dart';
import 'package:steadfast/themes/theme.dart';

import 'navigation/navigation.dart';


void main() async {
  //debugPaintSizeEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final appDocumentDirectory= await path_provider.getApplicationDocumentsDirectory();

  runApp(EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ta', 'IN'),
        Locale('mr', 'IN'),
        Locale('kn', 'IN'),
        Locale('te', 'IN'),
        Locale('ml', 'IN'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      useFallbackTranslations: true,
      saveLocale: true,
      child: ModularApp(module: Navigate(),child: MyApp())));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(
            create: (context) =>ThemeProvider()),
      ],
      child:  Consumer<ThemeProvider>(
          builder:(context,data,child){
            return ScreenUtilInit(
              designSize: Size(414,896),
              builder:()=> MaterialApp(
                debugShowCheckedModeBanner: false,
                theme:data.isDark! ?ThemeCollection().themeDark
                    :ThemeCollection().themeLight,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
              ).modular(),
            );
          }
      ),
    );
  }
}
