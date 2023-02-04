import 'package:flutter/material.dart';
import 'package:ktabna/All_colors.dart';

import 'package:ktabna/pages/titel.dart';

class commission extends StatefulWidget {
  const commission({Key? key}) : super(key: key);

  @override
  State<commission> createState() => _commissionState();
}

double? totel;
double totl(double ed) {
  double f = 0.1 as double;
  double t = (ed * f) as double;
  totel = ed * f;

  print(totel);
  return t;
}

class _commissionState extends State<commission> {
  @override
  Widget build(BuildContext context) {
    var print_pay;
    // String print_pay = "$totel";

    if (totel == null) {
      print_pay = "لاتوجد قيمه مدخلة";
    } else if (totel.toString().length == totel.toString().length) {
      var num = totel.toString().length;

      if (num >= 5) {
        print_pay = "${totel.toString().substring(0, 4)} ريال";
      } else
        print_pay = "${totel.toString().substring(0, 3)} ريال";
    }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/bacground2.png'),
              ),
            ),
            child: Column(
              children: [
                ///logo
                TitelPage(context, "لدفع العمولة",white),

                ///logo
                SizedBox(
                  height: 120,
                ),

                ///Square1
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 0, right: 0),
                      height: 700.0,
                      width: 392.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40))),
                        child: Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Container(
                              child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      " بيع الكتاب مقابل فقط    ",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: kohel,
                                      ),
                                    ),
                                    Text("%10",
                                        style: TextStyle(
                                            fontSize: 35, color: green))
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15, top: 15),
                                    child: Text(
                                      " أحسب العمولة:",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          //fontFamily: "Cairo",
                                          color: kohel),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              width: 150,
                                              child: TextFormField(
                                                cursorHeight: 33,
                                                keyboardType:
                                                    TextInputType.number,
                                                onFieldSubmitted: (String rr) {
                                                  setState(() {
                                                    if (rr == null) {
                                                      Text("لاتوجد قيمه مدخلة");
                                                    } else {
                                                      double e =
                                                          double.parse(rr);
                                                      if (e == null) {
                                                        totl(1);
                                                      } else
                                                        (totl(e));
                                                    }
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xffA3DACB),
                                                              width: 2,
                                                            )),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: green,
                                                          width: 2),
                                                    ),
                                                    border:
                                                        OutlineInputBorder(),
                                                    labelText:
                                                        ' ادخل مبلغ الكتب',
                                                    labelStyle: TextStyle(
                                                        fontSize: 20,
                                                        color: yellow)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "=",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Expanded(
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.vertical,
                                                child: Text(
                                                  "$print_pay",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: kohel),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      child: Text(
                                        "الحسابات البنكية",
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: kohel,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/stc pay.png",
                                      height: 80,
                                    ),
                                    Image.asset(
                                      "assets/ابل بي.png",
                                      height: 80,
                                    ),
                                    Image.asset(
                                      "assets/مدى.png",
                                      height: 35,
                                    )
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/شعار الراجحي.png",
                                      height: 130,
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Image.asset(
                                      "assets/الانماء.png",
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "SA1234522267",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 75,
                                      ),
                                      Text(
                                        "SA123456789",
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              )

                              // SizedBox(
                              //   height: 120,
                              // )
                            ],
                          )),
                        ),
                      ),
                    ),
                  ],
                ),

             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
