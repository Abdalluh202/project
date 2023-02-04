
import 'dart:developer';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ktabna/All_colors.dart';
import 'titel.dart';
import 'package:url_launcher/url_launcher.dart';

class IN_ADDS extends StatefulWidget {
  //const IN_ADDS({super.key});
  var location;
  var colechName;
  var notbook;
  var comment;
  var phone;
  var Image;
  IN_ADDS(var loc, var colec, var b, var c, var p, var Im) {
    this.location = loc;
    this.colechName = colec;
    this.notbook = b;
    this.comment = c;
    this.phone = p;
    this.Image = Im;
  }
  @override
  State<IN_ADDS> createState() => _IN_ADDSState();
}

class _IN_ADDSState extends State<IN_ADDS> {
  Row _Text(var NameOrLocation, var num) {
    return Row(
      children: [
        SizedBox(
          width: 190,
        ),
        Text(
          '  $NameOrLocation ',
          style: TextStyle(fontSize: 35, color: kohel),
        ),
        num == 1
            ? Icon(Icons.person, size: 35, color: kohel)
            : Icon(Icons.location_on, size: 35, color: kohel),
      ],
    );
  }

  _Url(var phone) async {
    String url = "https://wa.me/$phone";
    // final Uri _url = Uri.parse('https://wa.me/');
    if (!await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
      );
      //await launchUrl(_url);
      // throw 'Could not launch $_url';
    }
  }

  telNphone(var phone) async {
    final Uri _tel = Uri.parse('tel://$phone');
    if (!await launchUrl(_tel)) {
      //await launchUrl(_url);
      throw 'Could not launch $_tel';
    }
  }

  // File _imagepath=;
  String? images;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/bacgroundCreate.png'),
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 1,
                    ),
                    Column(children: [
                      Row(
                        children: [
                          TitelPage(context, 'الأعلان', white),
                        ],
                      ),
                      // new Center(
                      //   child: TitelPage('الأعلان'),
                      // ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(children: [
                            Card(
                              child: Container(
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //       color: Colors.white,
                                //       width: 4.0,
                                //       style: BorderStyle.solid), //Border.all
                                //   borderRadius:
                                //       BorderRadius.all(Radius.circular(90)),
                                // ),
                                margin: EdgeInsets.only(top: 0),
                                height: 250,
                                width: 350.0,
                                child: Carousel(
                                  images: [
                                    //  Image.asset('assets/book.jpg'),
                                    Image.asset('assets/book.jpg'),
                                    Image.asset('assets/book.jpg'),
                                    Image.asset('assets/book.jpg'),
                                  ],
                                  dotSize: 4.0,
                                  dotSpacing: 30.0,
                                  dotColor: green,
                                  indicatorBgPadding: 5.0,
                                  dotBgColor: kohel.withOpacity(0.6),
                                  borderRadius: true,
                                  moveIndicatorFromBottom: 180.0,
                                  noRadiusForIndicator: true,
                                  boxFit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Column(children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    this.widget.notbook,
                                    style:
                                        TextStyle(fontSize: 25, color: kohel),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: kohel,
                                            ),
                                            Text(
                                              "عبدالاله",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            SizedBox(
                                              width: 110,
                                            ),
                                            Icon(Icons.location_on,
                                                color: kohel),
                                            Text(
                                              this.widget.location,
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "معلومات الاعلان",
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: yellow,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                  height: 80,
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child:
                                                            SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                child: Text(
                                                                  this
                                                                      .widget
                                                                      .comment,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20),
                                                                )),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                ])),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 350,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kohel,
                                  width: 1,
                                ),
                                color: Colors.white,
                                // color: green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                  // color:Colors.white,
                                ),
                              ),
                              child: TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                              width: 0,
                                              height: 220,
                                              child: Column(children: [
                                                Container(
                                                  width: 400,
                                                  height: 100,
                                                  child: TextButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        _Url(this.widget.phone);
                                                      });
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              _Url(this
                                                                  .widget
                                                                  .phone);
                                                            });
                                                          },
                                                          icon: Icon(
                                                              Icons.whatsapp),
                                                          iconSize: 40,
                                                          color: Colors.green,
                                                        ),
                                                        SizedBox(
                                                          width: 90,
                                                        ),
                                                        Text(
                                                          "whatsapp",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: kohel),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    width: 400,
                                                    height: 110,
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          telNphone(this
                                                              .widget
                                                              .phone);
                                                        });
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                telNphone(this
                                                                    .widget
                                                                    .phone);
                                                              });
                                                            },
                                                            icon: Icon(
                                                                Icons.call),
                                                            iconSize: 40,
                                                            color: Colors.green,
                                                          ),
                                                          SizedBox(
                                                            width: 120,
                                                          ),
                                                          Text(
                                                            "Phone",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: kohel),
                                                          ),
                                                        ],
                                                      ),
                                                    ))
                                              ]));
                                        });
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     builder: (context) => welcome(
                                    //         paswordd: pasword.text, uernamee: name.text)
                                    //         )

                                    //         );
                                  },
                                  child: Text(
                                    "الـتواصـل",
                                    style: TextStyle(
                                        color: kohel,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                            SizedBox(
                              height: 40,
                            )
                          ]))
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
