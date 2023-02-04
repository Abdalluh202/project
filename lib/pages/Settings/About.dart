import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ktabna/All_colors.dart';
import 'package:ktabna/pages/titel.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

int select_item = 0;

_Url(var GetHupName) async {
  var url = "https://github.com/$GetHupName";

  if (!await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(
      Uri.parse(url),
    );
  }
}

Padding programingNAME(String Name, var githupNAME) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Container(
          // color: Colors.white12,
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              // color: Colors.black,
                              blurRadius: 15,
                              // spreadRadius: 4,
                              offset: Offset(0.0, 15.0),
                              color: Color(0XFFA7A9AF)),
                          BoxShadow(
                              // color: Colors.black,
                              blurRadius: 20,
                              //spreadRadius: 4,
                              offset: Offset(-28.0, -28.0),
                              color: Color.fromARGB(255, 252, 252, 252)),
                        ],
                        border: Border.all(color: kohel, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.all(0),
                    height: 190.0,
                    width: 290,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                //   width: 20,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.person,
                                      size: 40,
                                      color: kohel,
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 120,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "$Name",
                                    style:
                                        TextStyle(fontSize: 29, color: green),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                // crossAxisAlignment:
                                //     CrossAxisAlignment.center,
                                // mainAxisAlignment:
                                //     MainAxisAlignment.start,
                                children: [
                                  Text("Abdalluh202",
                                      style: TextStyle(
                                          fontSize: 15, color: yellow)),
                                  IconButton(
                                      onPressed: null,
                                      icon: Image(
                                          image:
                                              AssetImage("assets/github.png"))),
                                  SizedBox(
                                    width: 3,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                  onPressed: () {
                    _Url(githupNAME);
                  },
                )
              ]),
        ),
        SizedBox(
          height: 230,
        ),
      ],
    ),
  );
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/bacgroundCreate.png'),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            // TitelPage(context, "نبذة عن التطبيق", white),

            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 35,
                      color: Colors.white,
                    )),
              ),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 390,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          green,
                          Color(0xffffffff),
                          yellow,
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                height: 160,
                                width: 360,
                                image: AssetImage(
                                  "assets/logo2.png",
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 7, left: 7),
                              child: Container(
                                //alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),

                                child: Text(
                                  "   مرحبا تطبيق كتابنا يتيح لك بيع كتبك المستعملة بسهول   ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Cairo",
                                    color: Color(0XFF3E70AE),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 390,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "نبذه عن التطبيق :",
                              style: TextStyle(color: green, fontSize: 25),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Text(
                                            "تطبيق بسيط من ايادي سعودين حبو يحلو مشكله  كل طالب جامعي وهي عدم وجود كتب مستعمله او وجود  كتب جديدة  لاكنها غاليه الثمن حبينا نبسط رحلتك للبحثك عن الكتب في تطبيق بسيط وسهل الاستخدام",
                                            style: TextStyle(
                                                fontSize: 17, color: kohel),
                                          )),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 390,
                    height: 850,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "مصممين البرنامج :",
                              style: TextStyle(color: green, fontSize: 25),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  child: Container(
                                child: Row(
                                  children: [
                                    programingNAME("عبدالله", "Abdalluh202"),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  child: Container(
                                child: Row(
                                  children: [
                                    programingNAME("عبدالاله", "ax-ccx"),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  child: Container(
                                child: Row(
                                  children: [
                                    programingNAME("عايض", "nothingop"),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),

            ///end logo
            SizedBox(height: 100),

            ///2
          ]),
        ),
      ),
    ));
  }
}
