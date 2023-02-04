import 'package:flutter/material.dart';
import 'package:ktabna/All_colors.dart';
import 'package:ktabna/pages/sections/sections.dart';
import 'package:ktabna/pages/sections/sections_imamu.dart';
import 'package:ktabna/pages/titel.dart';

import '../Homepage.dart';
import 'Settings.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:email_validator/email_validator.dart';
import 'singin.dart';
import 'package:ktabna/All_colors.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);
  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  get controller => null;

  SizedBox TextF(var name, var exampel, var inText) {
    return SizedBox(
      width: 350,
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: inText,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: "    $name   ",
              labelStyle: TextStyle(
                  fontSize: 15, color: yellow, fontWeight: FontWeight.w700),
              hintText: "   $exampel ",
              suffix: Icon(
                Icons.person,
                size: 20,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: kohel,
                    width: 2,
                  )),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kohel, width: 3),
              ))),
    );
  }

  TextEditingController Email = TextEditingController();
  TextEditingController Number = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController Name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/bacground2.png'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///logo
                TitelPage(context, "معلومات الحساب", white),

                Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 40,
                    ),

                    SizedBox(
                      height: 80,
                    ),
                    // Universities("   اسم الجامعة", UnaverNAME),
                    // // SectionName(' اسم القسم', CollegeName),
                    Container(
                      width: 400,
                      //color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "لتعديل معلومات الحساب",
                                style: TextStyle(
                                  color: kohel,
                                  fontSize: 33,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 20),
                                child:
                                    TextF('      الاســــم   ', 'محمد', Name),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 20),
                                child: TextF('البريد الاكتروني',
                                    'test@hotmi.com', Email),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 20),
                                child: TextF(
                                    '     رقم الجوال   ', '0551111111', Number),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 20),
                                child: TextF(
                                    '     كلمة المرور  ', 'كلمة المرور ', pass),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 20),
                                child: Container(
                                  width: 350,
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          // print(CollegeName);
                                          // print(UnaverNAME);
                                          // print(Name.text.toString());
                                          // print(Email.text.toString());
                                          // print(Number.text);
                                          // print(pass.text.toString());
                                          // insertacc();
                                        });
                                      },
                                      child: Text(
                                        "تغير البريد الاكتروني",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  decoration: BoxDecoration(
                                      color: kohel,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 20),
                                child: Container(
                                  width: 350,
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          // print(CollegeName);
                                          // print(UnaverNAME);
                                          // print(Name.text.toString());
                                          // print(Email.text.toString());
                                          // print(Number.text);
                                          // print(pass.text.toString());
                                          // insertacc();
                                        });
                                      },
                                      child: Text(
                                        "تغير رقم الجوال",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  decoration: BoxDecoration(
                                      color: kohel,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 15, bottom: 20),
                                child: Container(
                                  width: 350,
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          // print(CollegeName);
                                          // print(UnaverNAME);
                                          // print(Name.text.toString());
                                          // print(Email.text.toString());
                                          // print(Number.text);
                                          // print(pass.text.toString());
                                          // insertacc();
                                        });
                                      },
                                      child: Text(
                                        "تغير  الاســـم",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  decoration: BoxDecoration(
                                      color: kohel,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
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
