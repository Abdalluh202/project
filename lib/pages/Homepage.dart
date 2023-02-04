import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:http/http.dart' as http;
import 'package:ktabna/pages/settings/CreateAcconut.dart';
import 'In_add.dart';
import 'sections/sections_Nourah.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:ktabna/All_colors.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// Future GetData() async {
//   var url = "https://104.234.147.107/getData.php";
//   var res = await http.get(Uri.parse(url));

//   if (res.statusCode == 200) {
//     var red = json.decode(res.body);

//     print(res);
//   }
// }

// int select_item = 0;
// List list = [];

// class _HomeState extends State<Home> {
//   @override
//   Future GetData() async {
//     var url = "http://104.234.147.107/getData.php";
//     var res = await http.get(Uri.parse(url));

//     if (res.statusCode == 200) {
//       var red = json.decode(res.body);

//       print(res);
//     } else {
//       print("somthing wrong");
//     }
//   }

//   @override
//   void initState() {
//     super.initState();

//     GetData();
//   }

//   Widget build(BuildContext context) {
//     return Container(
//       height: 700,
//       child: cc(),
//     );
//   }
// }

// class cc extends StatefulWidget {
//   const cc({Key? key}) : super(key: key);

//   @override
//   State<cc> createState() => _ccState();
// }

// class _ccState extends State<cc> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(children: [
//       /// loge
//       Container(
//         margin: EdgeInsets.only(left: 60, right: 60),
//         height: 54.0,
//         width: 224.0,
//         child: Container(
//             decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xffF4AC47), width: 5),
//                 color: Color(0xff42A9D2),
//                 borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(40),
//                     bottomRight: Radius.circular(40))),
//             child: const Center(
//               child: Text(
//                 "KTABNA",
//                 style: TextStyle(fontSize: 30, color: Color(0xff072A52)),
//                 textAlign: TextAlign.center,
//               ),
//             )),
//       ),

//       ///end loge
//       ///بدايه واجه الاعلانات
//       Container(
//         decoration: BoxDecoration(
//             border:
//                 Border.all(color: Color.fromARGB(255, 7, 42, 82), width: 3.5),
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(0),
//                 bottomRight: Radius.circular(0))),
//         margin: EdgeInsets.only(top: 10),
//         height: 250,
//         width: 50.0,
//         child: Carousel(
//           images: [
//             Image.asset('assets/book.jpg'),
//             Image.asset('assets/اصول البيانات.jpeg')
//           ],
//           dotSize: 4.0,
//           dotSpacing: 15.0,
//           dotColor: Colors.black,
//           indicatorBgPadding: 8.0,
//           dotBgColor: Color.fromARGB(255, 7, 42, 82).withOpacity(0.6),
//           borderRadius: true,
//           moveIndicatorFromBottom: 180.0,
//           noRadiusForIndicator: true,
//           boxFit: BoxFit.contain,
//         ),
//       ),

//       ///نهايه الواجه
//       ///sections
//       ///
//       SizedBox(
//         height: 25,
//       ),
//       Container(
//         margin: EdgeInsets.only(top: 1, bottom: 4),
//         child: Text(
//           "الاقسام",
//           style: TextStyle(
//               fontSize: 25, color: Colors.lightBlue, fontFamily: "Cairo"),
//           textAlign: TextAlign.center,
//         ),
//       ),
//       Container(
//           margin: EdgeInsets.only(bottom: 0),
//           height: 140.0,
//           width: 111.0,
//           child: Container(
//             decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xffF4AC47), width: 2.5),
//                 borderRadius: BorderRadius.all(Radius.circular(20))),
//             child: ListView(children: [
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                   height: 100,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       ///الجامعات
//                       Container(
//                         height: 100,
//                         width: 100,
//                         child: ListTile(
//                           title: Image.asset(
//                             'assets/nourah2.webp',
//                             width: 80,
//                             height: 55,
//                             fit: BoxFit.cover,
//                           ),
//                           subtitle: Text(
//                             'جامعة الأميرة نورة',
//                             textAlign: TextAlign.center,
//                           ),
//                           onTap: () {
//                             Navigator.of(context).pushNamed('norah');

//                             // Navigator.of(context)
//                             //     .push(MaterialPageRoute(builder: ((context) {
//                             //   return sections_Nourah();
//                             // })));
//                           },
//                         ),
//                       ),
//                       Container(
//                         height: 160,
//                         width: 180,
//                         child: ListTile(
//                           title: Image.asset('assets/images-1.png',
//                               width: 90, height: 70),
//                           subtitle: Text(
//                             'جامعة الملك سعود',
//                             textAlign: TextAlign.center,
//                           ),
//                           onTap: () {
//                             Navigator.of(context).pushNamed("ksu");
//                           },
//                         ),
//                       ),
//                       Container(
//                         height: 100,
//                         width: 100,
//                         child: ListTile(
//                           title: Image.asset(
//                             'assets/alama11.png',
//                             width: 80,
//                             height: 75,
//                           ),
//                           subtitle: Text(
//                             'جامعة الأمام محمد',
//                             textAlign: TextAlign.center,
//                           ),
//                           onTap: () {
//                             Navigator.of(context).pushNamed("ima");
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         height: 100,
//                         width: 100,
//                         child: ListTile(
//                           title: Image.asset(
//                             'assets/atg.jpg',
//                             width: 80,
//                             height: 80,
//                             fit: BoxFit.cover,
//                           ),
//                           subtitle: Text(
//                             'كلية التقنية',
//                             textAlign: TextAlign.center,
//                           ),
//                           onTap: () {
//                             Navigator.of(context).pushNamed("tvtc");
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         height: 100,
//                         width: 100,
//                         child: ListTile(
//                           title: Image.asset(
//                             'assets/Screenshot 2023-01-03 184101.png',
//                             width: 60,
//                             height: 50,
//                             fit: BoxFit.fill,
//                           ),
//                           subtitle: Text(
//                             'جامعه الملك فيصل',
//                             textAlign: TextAlign.center,
//                           ),
//                           onTap: () {
//                             Navigator.of(context).pushNamed("fisa");
//                           },
//                         ),
//                       ),

//                       SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         height: 100,
//                         width: 100,
//                         child: ListTile(
//                           title: Image.asset(
//                             'assets/Screenshot 2023-01-03 182432سطام.png',
//                             width: 20,
//                             height: 50,
//                             fit: BoxFit.fill,
//                           ),
//                           subtitle: Text(
//                             'جامعه الأمير سطام',
//                             textAlign: TextAlign.center,
//                           ),
//                           onTap: () {
//                             Navigator.of(context).pushNamed("se");
//                           },
//                         ),
//                       ),

//                       ///endالجامعات
//                     ],
//                   )),
//             ]),
//           )),

//       ///end sections
//       SizedBox(
//         height: 25,
//       ),

//       ///Latest products
//       ///
//       SizedBox(
//         height: 40,
//       ),
//       Container(
//         padding: EdgeInsets.only(left: 140, top: 10, bottom: 10),
//         height: 65,
//         width: 5,
//         decoration: BoxDecoration(
//           border:
//               Border.all(color: Color(0xffF4AC47).withOpacity(0.7), width: 2.5),
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(0),
//               bottomRight: Radius.circular(0),
//               topLeft: Radius.circular(40),
//               topRight: Radius.circular(40)),
//         ),
//         child: Text(
//           "اخر الكتب",
//           style: TextStyle(
//               fontSize: 25, color: Colors.lightBlue, fontFamily: "Cairo"),
//         ),
//       ),

//       ///stert gred view
//       Container(
//         height: 400,
//         decoration: BoxDecoration(
//           border: Border.all(
//               color: Color.fromARGB(255, 7, 42, 82).withOpacity(0.7),
//               width: 2.5),
//         ),
//         child: GridView(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 25,
//             mainAxisSpacing: 15,
//           ),
//           children: [
//             InkWell(
//               child: GridTile(
//                 child: Image.asset('assets/book.jpg'),
//                 footer: Container(
//                   height: 25,
//                   color: Colors.teal.withOpacity(0.8),
//                   child: Text(
//                     "كتاب ثلاث الاصول",
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               onTap: () {},
//             ),
//             InkWell(
//               child: GridTile(
//                 child: Image.asset('assets/اصول البيانات.jpeg'),
//                 footer: Container(
//                   height: 25,
//                   color: Colors.teal.withOpacity(0.8),
//                   child: Text(
//                     "كتاب اصول القواعد",
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               onTap: () {},
//             ),
//             InkWell(
//               child: GridTile(
//                 child: Image.asset('assets/اصول البيانات.jpeg'),
//                 footer: Container(
//                   height: 25,
//                   color: Colors.teal.withOpacity(0.8),
//                   child: Text(
//                     "كتاب القواع الثلاث",
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               onTap: () {},
//             ),
//             InkWell(
//               child: GridTile(
//                 child: Image.asset(
//                   'assets/book.jpg',
//                 ),
//                 footer: Container(
//                   height: 25,
//                   color: Colors.teal.withOpacity(0.8),
//                   child: Text(
//                     "كتاب داتا",
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               onTap: () {},
//             ),
//             SizedBox(
//               height: 70,
//             )
//           ],
//         ),
//       )

//       ///Latest products end
//     ]);
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

SizedBox Sectionss(BuildContext context, String CollName) {
  return SizedBox(
    // height: 200,
    // width: 200,
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
                  blurRadius: 30,
                  spreadRadius: 4,
                  offset: Offset(23.0, 23.0),
                  color: Color(0XFFA7A9AF)),
              BoxShadow(
                  // color: Colors.black,
                  blurRadius: 20,
                  //spreadRadius: 4,
                  offset: Offset(-23.0, -28.0),
                  color: Color.fromARGB(255, 252, 252, 252)),
            ]), //BoxDecoration
      ),
    ), //Container
  );
}

Future GetData() async {
  var url = "https://104.234.147.107/getData.php";
  var res = await http.get(Uri.parse(url));

  if (res.statusCode == 200) {
    var red = json.decode(res.body);

    print(res);
  }
}

int select_item = 0;

class _HomeState extends State<Home> {
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

  Widget build(BuildContext context) {
    return Container(
      child: cc(),
    );
  }
}

List list = [];

class cc extends StatefulWidget {
  const cc({Key? key}) : super(key: key);

  @override
  State<cc> createState() => _ccState();
}

List sections1 = [
  {"CollegeName": "ksu"},
  {"CollegeName": "norah"},
  {"CollegeName": "tvtc"},
  {"CollegeName": "fisa"},
  {"CollegeName": "se"},
  {"CollegeName": "ima"},
];

class _ccState extends State<cc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 252, 252, 252),
      child: ListView(
        children: [
          Container(
            width: 300,
            height: 400,
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
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        height: 180,
                        width: 390,
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
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Text(
                          " مرحبا تطبيق كتابنا يتيح لك بيع كتبك المستعملة بسهولة",
                          style: TextStyle(
                            fontSize: 17,
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

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 30),
            child: Container(
              margin: EdgeInsets.only(
                left: 160,
              ),
              child: Text(
                "الاقسام",
                style:
                    TextStyle(fontSize: 40, color: green, fontFamily: "Cairo"),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            child: ScrollSnapList(
              itemBuilder: _BuildListItem,
              itemCount: sections1.length,
              itemSize: 150,
              onItemFocus: (index) {},
              dynamicItemSize: true,
            ),
          ),

          ///end sections
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 160),
            child: Container(
              padding: EdgeInsets.only(left: 80, top: 0, bottom: 10),
              height: 85,
              //  width: 5,
              child: Text(
                "اخر الكتب",
                style: TextStyle(
                  fontSize: 40,
                  color: green,
                  fontFamily: "Cairo",
                ),
              ),
            ),
          ),

          SizedBox(
            height: 650.0,
            child: ListView.builder(
              //scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, int i) {
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
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _BuildListItem(BuildContext context, var index) {
    return SizedBox(
      height: 300,
      width: 150,
      child: Sectionss(context, '${sections1[index]['CollegeName']}'),
    );
  }
}















//  Container(
//               margin: EdgeInsets.all(0),
//               height: 170.0,
//               child: Container(
//                 child: Container(
//                     child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     ///الجامعات
//                     Sectionss(context, 'ksu'),
//                     SizedBox(
//                       width: 35,
//                     ),
//                     Sectionss(context, 'norah'),
//                     SizedBox(
//                       width: 35,
//                     ),
//                     Sectionss(context, 'tvtc'),
//                     SizedBox(
//                       width: 35,
//                     ),
//                     Sectionss(context, 'fisa'),
//                     SizedBox(
//                       width: 35,
//                     ),
//                     Sectionss(context, 'se'),
//                     SizedBox(
//                       width: 35,
//                     ),
//                     Sectionss(context, 'ima'),
//                     SizedBox(
//                       width: 35,
//                     ),

//                     ///endالجامعات
//                   ],
//                 )),
//               )