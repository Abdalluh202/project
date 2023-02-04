// @dart=2.9
import 'dart:io';
import 'package:ktabna/pages/Homepage.dart';
import 'package:ktabna/pages/Settings/Settings.dart';

import 'package:ktabna/pages/Settings/ber%20low.dart';
import 'package:ktabna/pages/sections/KFU.dart';
import 'package:ktabna/pages/sections/WSU.dart';
import 'package:ktabna/pages/Settings/About.dart';
import 'package:ktabna/pages/Settings/My%20ads.dart';
import 'package:ktabna/pages/Settings/account.dart';
import 'package:ktabna/pages/Settings/commission.dart';
import 'package:ktabna/pages/sections/sections_KSU.dart';
import 'package:ktabna/pages/sections/sections_imamu.dart';
import 'package:flutter/material.dart';
import 'package:ktabna/pages/sections/sections_Nourah.dart';
import 'package:ktabna/pages/sections/sections_TVTC.dart';
import 'package:ktabna/pages/settings/CreateAcconut.dart';
import 'package:ktabna/pages/settings/singin.dart';
import 'package:ktabna/pages/settings/Add_ads.dart';
import 'package:ktabna/pages/settings/singin.dart';
import 'package:ktabna/pages/In_add.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: //Home(),
          // IN_ADDS(),
          SingIn(),
      //commission(),
      // Home(),
      // Create_Account(),
    ),
    localizationsDelegates: [
      GlobalCupertinoLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [Locale("ar", "AE")],
    locale: Locale("ar", "AE"),
  ));
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ktabna Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ber(),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      routes: {
        'My abs': (context) {
          return my_ads();
        },
        'account': (context) {
          return account();
        },
        'comm': (context) {
          return commission();
        },
        'about': (context) {
          return about();
        },
        'ksu': (context) {
          return sections_KSU();
        },
        'norah': (context) {
          return sections_Nourah();
        },
        'ima': (context) {
          return sections_imamu();
        },
        'tvtc': (context) {
          return TVTC();
        },
        'se': (context) {
          return WSU();
        },
        'fisa': (context) {
          return KFU();
        },
        'sing_in': (context) {
          return SingIn();
        },
        'commission': (context) {
          return commission();
        },
      },
    );
  }
}
