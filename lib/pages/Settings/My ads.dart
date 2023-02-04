import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ktabna/All_colors.dart';
import 'package:ktabna/pages/titel.dart';

import '../In_add.dart';

class my_ads extends StatefulWidget {
  const my_ads({Key? key}) : super(key: key);

  @override
  State<my_ads> createState() => _my_adsState();
}

List list = [];
int select_item = 0;

class _my_adsState extends State<my_ads> {
  @override
  Future ReadData() async {
    var url = "https://104.234.147.107/getData.php";
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitelPage(context, "اعلاناتي",kohel),
            //end logo"اعلاناتي",

            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: ((cts, i) {
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
                                              color: Color.fromARGB(
                                                  255, 252, 252, 252)),
                                        ],
                                        border:
                                            Border.all(color: kohel, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    margin: const EdgeInsets.all(0),
                                    height: 190.0,
                                    width: 340,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                        child: Row(children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Image(
                                                  image: AssetImage(
                                                      "Upload/image_picker8903170732917423079.jpg"),
                                                  width: 100,
                                                  height: 125,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 70,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 140,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "${list[i]["book_Name"]}",
                                                    style: TextStyle(
                                                        fontSize: 23,
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                // crossAxisAlignment:
                                                //     CrossAxisAlignment.center,
                                                // mainAxisAlignment:
                                                //     MainAxisAlignment.start,
                                                children: [
                                                  Text("${list[i]["collage"]}",
                                                      style: TextStyle(
                                                          fontSize: 15)),
                                                  const Icon(
                                                    Icons.perm_identity_rounded,
                                                    color: Colors.teal,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "${list[i]["loc"]}",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  const Icon(
                                                    Icons.person_pin_circle,
                                                    color: Colors.teal,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  TextButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        "حذف",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.red),
                                                      )),
                                                  Icon(
                                                    Icons.delete,
                                                    color: Colors.red,
                                                    size: 20,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    var phone = list[i]["phone2"];
                                    var comment = list[i]["com"].toString();
                                    var location = list[i]["loc"].toString();
                                    var colechName =
                                        list[i]["collage"].toString();
                                    var notbook =
                                        list[i]["book_Name"].toString();
                                    var picpath = list[i]["picpath"].toString();

                                    setState(() {
                                      print(picpath);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: ((context) {
                                        return IN_ADDS(location, colechName,
                                            notbook, comment, phone, picpath);
                                      })));
                                    });
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
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



    //  Row(
    //                                   children: [
    //                                     SizedBox(
    //                                       width: 210,
    //                                     ),
    //                                     TextButton(
    //                                         onPressed: () {},
    //                                         child: Text(
    //                                           "حذف",
    //                                           style: TextStyle(fontSize: 16),
    //                                         ))
    //                                   ],
    //                                 ),
