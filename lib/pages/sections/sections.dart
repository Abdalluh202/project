import 'package:flutter/material.dart';
import 'package:ktabna/main.dart';
import 'package:ktabna/All_colors.dart';

class sections extends StatefulWidget {
  const sections({Key? key}) : super(key: key);

  @override
  State<sections> createState() => _sectionsState();
}

class _sectionsState extends State<sections> {
  @override
  int select_item = 0;

  SizedBox Sectionss(BuildContext context, String CollName) {
    return SizedBox(
      height: 200,
      width: 185,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('$CollName');
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/$CollName.png'), //NetworkImage
                scale: 2.5,
              ), //DecorationImage
              border: Border.all(
                  color: kohel,
                  width: 2.0,
                  style: BorderStyle.solid), //Border.all

              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    // color: Colors.black,
                    blurRadius: 20,
                    // spreadRadius: 4,
                    offset: Offset(5.0, 5.0),
                    color: Color(0XFFA7A9AF)),
              ]), //BoxDecoration
        ),
      ), //Container
    );
  }

  List sections1 = [
    {"CollegeName": "ksu"},
    {"CollegeName": "norah"},
    {"CollegeName": "tvtc"},
    {"CollegeName": "fisa"},
    {"CollegeName": "se"},
    {"CollegeName": "ima"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(children: [
            //لوقوا
            Container(
              margin: EdgeInsets.only(right: 55, left: 55),
              height: 54.0,
              width: 250.0,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: yellow, width: 2),
                      color: green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Center(
                    child: Text(
                      "الاقسام",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Cairo',
                        color: kohel,
                        //fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),

            SizedBox(
              height: 35,
            ),

            Row(
              children: [
                Sectionss(context, 'ksu'),
                Sectionss(context, 'ima'),
              ],
            ),
            Row(
              children: [
                Sectionss(context, 'norah'),
                Sectionss(context, 'tvtc'),
              ],
            ),
            Row(
              children: [
                Sectionss(context, 'fisa'),
                Sectionss(context, 'se'),
              ],
            ),

            // ListView.builder(
            //   // itemExtent: 2,
            //   shrinkWrap: true,
            //   itemCount: sections1.length,
            //   itemBuilder: (context, int i) {
            //     return SizedBox(
            //       height: 100,
            //       width: 100,
            //       child: TextButton(
            //         onPressed: () {
            //           Navigator.of(context)
            //               .pushNamed("${sections1[i]['CollegeName']}");
            //         },
            //         child: Container(
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               image: DecorationImage(
            //                 image: AssetImage(
            //                     'assets/${sections1[i]['CollegeName'].toString()}.png'), //NetworkImage
            //                 scale: 2.5,
            //               ), //DecorationImage
            //               border: Border.all(
            //                   color: Color(0xff04274F),
            //                   width: 3.0,
            //                   style: BorderStyle.solid), //Border.all

            //               borderRadius: BorderRadius.all(Radius.circular(10)),
            //               boxShadow: [
            //                 BoxShadow(
            //                     // color: Colors.black,
            //                     blurRadius: 20,
            //                     // spreadRadius: 4,
            //                     offset: Offset(15.0, 15.0),
            //                     color: Color(0XFFA7A9AF)),
            //                 BoxShadow(
            //                     // color: Colors.black,
            //                     blurRadius: 20,
            //                     //spreadRadius: 4,
            //                     offset: Offset(-28.0, -28.0),
            //                     color: Color.fromARGB(255, 252, 252, 252)),
            //               ]), //BoxDecoration
            //         ),
            //       ), //Container
            //     );
            //   },
            // )
            //end loge
          ]),
        ),
      ),
    );
  }
}
