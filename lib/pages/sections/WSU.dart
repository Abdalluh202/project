import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ktabna/All_colors.dart';
import 'package:ktabna/pages/sections/sections_KSU.dart';
import 'package:ktabna/pages/In_add.dart';
import 'package:ktabna/pages/titel.dart';

class WSU extends StatefulWidget {
  const WSU({Key? key}) : super(key: key);

  @override
  State<WSU> createState() => _WSUState();
}

class _WSUState extends State<WSU> {
  List list = [];

  var Scresh;

  get controller => null;

  @override
  Future ReadData() async {
    var url = "https://104.234.147.107/getwsu.php";
    var res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      var red = jsonDecode(res.body);
      if (red == "no ads") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: const Duration(seconds: 5),
            content: Text(
              "لا توجد إعلانات في القسم الحالي",
              style: TextStyle(color: Colors.red, fontSize: 20),
            )));
      } else {
        setState(() {
          list = red;
        });
      }
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

  Widget build(BuildContext context) {
    return Scaffold(

        /// AppBar lower
        body: SafeArea(
      child: Column(
        children: [
          TitelPage(context, "جامعة الامير سطام",kohel),

          SizedBox(
            height: 35,
          ),

          ///Search
          Search("Search", "( مثال( كتاب قواعد بيانات", Scresh),

          ///search end
          SizedBox(
            height: 6,
          ),

          /// icon filter
          // Row(
          //   children: [dd()],
          // ),

          /// icon filter end

          ///start Section
          ///
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
                                      borderRadius: BorderRadius.circular(15)),
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
                                              height: 20,
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
                                              height: 20,
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
                                            )
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
                                  var notbook = list[i]["book_Name"].toString();
                                  var picpath = list[i]["picpath"].toString();

                                  setState(() {
                                    print(picpath);
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: ((context) {
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
    ));
  }
}
