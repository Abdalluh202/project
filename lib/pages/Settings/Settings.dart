import 'dart:convert';
import 'package:ktabna/pages/settings/singin.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ktabna/All_colors.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

int select_item = 0;

class _settingState extends State<setting> {
  List list = [];
  Future ReadData() async {
    var url = "https://104.234.147.107/getname.php";
    var res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      var red = jsonDecode(res.body);

      setState(() {
        list = red;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    GetData();
  }

  GetData() async {
    await ReadData();
  }

  Padding sectionsINSETING(var titel, Icon icons, String goto) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          children: [
            Container(
              //margin: EdgeInsets.only(top: 35),
              height: 69.0,
              width: 350.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: green, width: 3),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15))),
                child: Container(
                  margin: EdgeInsets.only(left: 120),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('$goto');
                    },
                    child: Row(
                      children: [
                        icons,
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$titel",
                          style: TextStyle(
                              fontSize: 25, fontFamily: "Caira", color: yellow),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: ((cts, i) {
              return Container(
                  height: 850,
                  child: ListView(
                    children: [
                      ///loge
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
                                "الاعدادت",
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
                        height: 40,
                      ),

                      ///end logo
                      /// user name
                      Container(
                        margin: EdgeInsets.only(left: 150, right: 150),
                        child: Row(
                          children: [
                            Text(
                              "${list[i]["name"]}  ",
                              style:
                                  TextStyle(fontSize: 25, fontFamily: "Cairo"),
                            ),
                            Icon(
                              Icons.sentiment_satisfied_alt_sharp,
                              size: 30,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      /// user name end
                      /// القوائم
                      Row(
                        children: [
                          ///1
                          ///
                          sectionsINSETING(
                              "أعلاناتي",
                              Icon(
                                Icons.event_available,
                                size: 35,
                                color: kohel,
                              ),
                              "My abs"),

                          ///1
                        ],
                      ),

                      ///2
                      ///
                      Row(
                        children: [
                          ///1
                          ///
                          sectionsINSETING(
                              "معلومات الحساب",
                              Icon(
                                Icons.badge,
                                size: 33,
                                color: kohel,
                              ),
                              'account'),

                          ///1
                        ],
                      ),

                      Row(
                        children: [
                          ///1
                          ///
                          sectionsINSETING(
                              "لدفع العمولة",
                              Icon(
                                Icons.currency_exchange,
                                size: 35,
                                color: kohel,
                              ),
                              'comm'),

                          ///1
                        ],
                      ),

                      ///3
                      Row(
                        children: [
                          ///1
                          ///
                          sectionsINSETING(
                              "نبذة عن التطبيق",
                              Icon(
                                Icons.photo_album,
                                size: 35,
                                color: kohel,
                              ),
                              "about"),

                          ///1
                        ],
                      ),

                      Row(
                        children: [
                          ///1
                          ///
                          sectionsINSETING(
                              "تسجيل خروج",
                              Icon(
                                Icons.login,
                                size: 35,
                                color: Colors.red,
                              ),
                              "sing_in"),

                          ///1
                        ],
                      ),

                      ///5
                    ],
                  ));
            })));
  }
}
