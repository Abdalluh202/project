import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ktabna/All_colors.dart';
import 'package:ktabna/pages/titel.dart';
import 'package:ktabna/pages/In_add.dart';

class sections_KSU extends StatefulWidget {
  @override
  State<sections_KSU> createState() => _sections_KSUState();
}

List<String> disciplines = [
  'الهندسة',
  'العلوم الطبيعية',
  'العلوم الاجتماعية',
  'العلوم الإنسانية',
  'العلوم الإدارية',
  'التربية',
  'الطب والعلوم الصحية',
  'القانون',
  'الفن والتصميم',
  'الزراعة والدراسات البيئية',
];
List list = [];

class _sections_KSUState extends State<sections_KSU> {
  var Scresh;

  get controller => null;

  var pr1;
  Future ReadData() async {
    var url = "https://104.234.147.107/getksu.php";
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

  var comment;
  Widget build(BuildContext context) {
    return Scaffold(

        /// AppBar lower
        body: SafeArea(
      child: Column(
        children: [
          TitelPage(context, "جامعة الملك سعود",kohel),

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
                                                    "${list[i]["picpath"]}"),
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
                // return Column(
                //   children: [
                //     //com ,

                //     Container(
                //       margin: const EdgeInsets.symmetric(horizontal: 10),
                //       height: 160.0,
                //       child: Container(
                //           decoration: BoxDecoration(
                //               border:
                //                   Border.all(color: Colors.blueGrey, width: 2),
                //               borderRadius: BorderRadius.circular(8)),
                //           child:

                //            TextButton(
                //             child: Container(
                //               child: Column(
                //                 children: [
                //                   Expanded(
                //                     flex: 9,
                //                     child: Row(
                //                       children: [
                //                         Column(
                //                           children: [
                //                             Image(
                //                               image:
                //                                   AssetImage("assets/book.jpg"),
                //                               width: 80,
                //                               height: 130,
                //                             ),
                //                           ],
                //                         ),
                //                         SizedBox(
                //                           width: 25,
                //                         ),
                //                         Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.end,
                //                           mainAxisAlignment:
                //                               MainAxisAlignment.center,
                //                           children: [
                //                             Text(
                //                               "${list[i]["book_Name"]}",
                //                               style: TextStyle(
                //                                   fontSize: 25,
                //                                   color: Colors.green),
                //                             ),
                //                             const SizedBox(height: 65),
                //                             Row(
                //                               mainAxisAlignment:
                //                                   MainAxisAlignment.end,
                //                               children: [
                //                                 Text("${list[i]["collage"]}",
                //                                     style: TextStyle(
                //                                         fontSize: 16)),
                //                                 SizedBox(
                //                                   width: 10,
                //                                 ),
                //                                 const Icon(
                //                                   Icons.perm_identity_rounded,
                //                                   color: Colors.teal,
                //                                 ),
                //                                 SizedBox(
                //                                   width: 20,
                //                                 ),
                //                                 Text(
                //                                   "${list[i]["loc"]}",
                //                                   style:
                //                                       TextStyle(fontSize: 15),
                //                                 ),
                //                                 SizedBox(
                //                                   width: 10,
                //                                 ),
                //                                 const Icon(
                //                                   Icons.person_pin_circle,
                //                                   color: Colors.teal,
                //                                 ),
                //                                 SizedBox(
                //                                   width: 10,
                //                                 )
                //                               ],
                //                             ),
                //                           ],
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             onPressed: () {
                //               var phone = list[i]["phone2"];
                //               comment = list[i]["com"].toString();
                //               var location = list[i]["loc"].toString();
                //               var colechName = list[i]["collage"].toString();
                //               var notbook = list[i]["book_Name"].toString();
                //               var picpath = list[i]["picpath"].toString();

                //               setState(() {
                //                 print(picpath);
                //                 Navigator.of(context).push(
                //                     MaterialPageRoute(builder: ((context) {
                //                   return IN_ADDS(location, colechName, notbook,
                //                       comment, phone, picpath);
                //                 })));
                //               });
                //             },
                //           )),
                //     ),
                //     const SizedBox(height: 26),
                //   ],
                // );
              }),
            ),
          ),
        ],
      ),
    ));
  }
}

///flter

// class dd extends StatefulWidget {
//   const dd({Key? key}) : super(key: key);

//   @override
//   State<dd> createState() => _ddState();
// }

// class _ddState extends State<dd> {
//   List<String> disciplines = [
//     'الهندسة',
//     'العلوم الطبيعية',
//     'العلوم الاجتماعية',
//     'العلوم الإنسانية',
//     'العلوم الإدارية',
//     'التربية',
//     'الطب والعلوم الصحية',
//     'القانون',
//     'الفن والتصميم',
//     'الزراعة والدراسات البيئية',
//   ];

//   get TitleName => "التخصصات";

//   ///يطبع التخصص المختار
//   set UnaverNAME(String UnaverNAME) {
//     print(UnaverNAME);
//   }

//   set selectItem(String selectItem) {}

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 168,
//       height: 60,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 8),
//         child: Center(
//           child: DropdownButtonFormField<String>(
//             decoration: InputDecoration(
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(40),
//                   borderSide: BorderSide(color: Color(0xff072A52), width: 2),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(40),
//                     borderSide:
//                         BorderSide(width: 2, color: Color(0xff072A52)))),
//             hint: Center(
//                 child: Text(
//               "       $TitleName",
//               // "   اسم الجامعة",
//               style: TextStyle(
//                   fontWeight: FontWeight.w800,
//                   fontSize: 16,
//                   color: Color.fromRGBO(244, 172, 71, 1)),
//             )),
//             // value: selectItem,
//             items: disciplines
//                 .map((item) => DropdownMenuItem(
//                     value: item,
//                     child: Text(item,
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: Color.fromRGBO(244, 172, 71, 1),
//                             fontWeight: FontWeight.w900))))
//                 .toList(),
//             onChanged: (value) {
//               setState(() {
//                 selectItem = value!;
//                 UnaverNAME = value;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
