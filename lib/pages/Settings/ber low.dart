import 'package:flutter/material.dart';
import 'package:ktabna/All_colors.dart';
import 'package:ktabna/pages/Settings/About.dart';
import 'package:ktabna/pages/Settings/My%20ads.dart';
import 'package:ktabna/pages/Settings/account.dart';
import '../../pages/settings/Add_ads.dart';
import '../Homepage.dart';
import '../sections/sections.dart';
import '../sections/sections_KSU.dart';
import '../sections/sections_Nourah.dart';
import '../sections/sections_TVTC.dart';
import '../sections/sections_imamu.dart';
import 'Settings.dart';
import 'commission.dart';

class ber extends StatefulWidget {
  const ber({Key? key}) : super(key: key);
  @override
  State<ber> createState() => _berState();
}

class _berState extends State<ber> {
  int select_item = 0;
  final screens = [
    Home(),
    uploudd(),
    sections(),
    setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[select_item],

      ///bar lowe
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: select_item,
        backgroundColor: green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xff072A52),
        selectedFontSize: 15,
        unselectedFontSize: 14,
        selectedLabelStyle: TextStyle(fontFamily: "Cairo"),
        onTap: (index) => setState(() => select_item = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: ('الرئسية'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: ('اضافة أعلان'),
            icon: Icon(Icons.file_download_rounded),
          ),
          BottomNavigationBarItem(label: ("الاقسام"), icon: Icon(Icons.dns)),
          BottomNavigationBarItem(
            label: ('الاعدادات'),
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      ///bar low
    );
  }
}
