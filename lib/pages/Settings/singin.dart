import 'dart:ui';
import 'CreateAcconut.dart';
import 'ReturnPass.dart';
import 'package:flutter/material.dart';
import 'CreateAcconut.dart';
import 'Add_ads.dart';
import 'package:ktabna/main.dart';
import 'package:ktabna/All_colors.dart';

class SingIn extends StatefulWidget {
  // const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  //This is  method icon visibility_off OR visibility_sharp use in TextField
  Icon oricon(int namber) {
    if (namber == 1) {
      return Icon(
        Icons.visibility_off,
        color: kohel,
      );
    } else {
      return Icon(
        Icons.visibility_sharp,
        color: kohel,
      );
    }
  }

  TextEditingController name = new TextEditingController();
  TextEditingController pasword = new TextEditingController();

  var TorF = true;
  int iconnumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/bacgroundsin2.png'),
                ),
              ),
              //
              //'images/sing.png'

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 230,
                  ),
                  //Image.asset('assets/logonewpng.png'),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "        تسجيل دخول",
                              style: TextStyle(color: kohel, fontSize: 24),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //=============================This is TextField Email ==========================================
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              width: 300,
                              height: 65,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                controller: name,
                                // maxLength: 15,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: "    البريد الاكتروني    ",
                                    labelStyle: TextStyle(
                                        fontSize: 20,
                                        color: yellow,
                                        fontWeight: FontWeight.w600),
                                    hintText: "    Email@gmail.com ",
                                    suffix: Icon(
                                      Icons.person,
                                      size: 45,
                                      color: Colors.white,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color: kohel,
                                          width: 2,
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: kohel, width: 3),
                                    )),
                              ),
                            ),
                          ),
                          //=============================This is TextField Password ==========================================

                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: SizedBox(
                              width: 300,
                              height: 65,
                              child: TextField(
                                controller: pasword,
                                decoration: InputDecoration(
                                    filled:
                                        true, //true حط  fillcolor عشان تفعل ال
                                    fillColor: Colors.white,
                                    labelText: '    كلمة المرور   ',
                                    labelStyle: TextStyle(
                                        color: yellow,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                    hintText: "   أكتب كلمة المرور",
                                    //prefixIcon: Icon(Icons.person,size: 30,),
                                    suffix: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (TorF == true) {
                                            TorF = false;

                                            iconnumber = 1;
                                          } else if (TorF == false) {
                                            iconnumber = 2;
                                            TorF = true;
                                          }
                                        });
                                      },
                                      icon: oricon(iconnumber),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color: kohel,
                                          width: 2,
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: kohel, width: 3),
                                    )),
                                obscureText: TorF,
                              ),
                            ),
                          ),
                          //=============================This is ElevatedButton  ==========================================
                          // SizedBox(
                          //   height: 15,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: (() {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: ((context) {
                                      return Return_Password();
                                    })));
                                  }),
                                  child: Text(
                                    'هل نسيت كلمة المرور؟',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  )),
                              SizedBox(
                                width: 28,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              width: 300,
                              height: 65,
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: ((context) {
                                      return MyApp();
                                    })));

                                    setState(() {
                                      print(name.text.toString());
                                      print(pasword.text.toString());
                                    });
                                  },
                                  child: Text(
                                    "تسجيل الدخول",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                              decoration: BoxDecoration(
                                  color: kohel,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //This is Textbutton Create account
                                Text(
                                  "ليس لديك حساب؟",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                    onPressed: (() {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: ((context) {
                                        return Create_Account();
                                      })));
                                    }),
                                    child: Text(
                                      'انشاء حساب',
                                      style: TextStyle(
                                          color: kohel,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
