import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ktabna/All_colors.dart';

class Return_Password extends StatefulWidget {
  const Return_Password({key});

  @override
  State<Return_Password> createState() => _Return_PasswordState();
}

class _Return_PasswordState extends State<Return_Password> {
  @override
  TextEditingController number = TextEditingController();
  TextEditingController NewPass = TextEditingController();
  TextEditingController email = TextEditingController();
  TextField TEXT_FIL(
      String titel, String exampel, var almtgir, var IconNUMBER) {
    var or = 1;
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: almtgir,
      // maxLength: 15,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "    $titel     ",
          labelStyle: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(244, 172, 71, 1),
            fontWeight: FontWeight.w600,
          ),
          hintText: "   $exampel ",
          suffix: IconNUMBER == or
              ? Icon(Icons.person, size: 35, color: Color(0xff072A52))
              : Icon(Icons.phone, size: 35, color: Color(0xff072A52)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: kohel,
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kohel, width: 3),
          )),
    );
  }

//====================password==========================
  TextField TEXT_FIL_pass(String titel, String exampel, var almtgir) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: almtgir,
      // maxLength: 15,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "    $titel     ",
          labelStyle: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(244, 172, 71, 1),
              fontWeight: FontWeight.w600),
          hintText: "   $exampel ",
          suffix: Icon(Icons.person, size: 35, color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: kohel,
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kohel, width: 3),
          )),
    );
  }

  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/bacgroundCreate.png'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(children: [
                  SizedBox(
                    height: 55,
                  ),
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
                            size: 30,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      //color: Colors.white,
                      width: 390,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "تغير كلمة المرور",
                                  style: TextStyle(
                                      color: kohel,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SizedBox(
                                width: 300,
                                height: 65,
                                child: TEXT_FIL('البريد الكتروني',
                                    'kTABON@hotmil.com', email, 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SizedBox(
                                  width: 300,
                                  height: 65,
                                  child: TEXT_FIL(
                                      'رقم الجوال', '0551122334', number, 2)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SizedBox(
                                width: 300,
                                height: 65,
                                child: TEXT_FIL_pass(
                                    'كلمة المرور الجديدة', 'Aa1234', NewPass),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 65,
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      print(email.text.toString());
                                      print(number.text);
                                      print(NewPass.text.toString());
                                    });
                                  },
                                  child: Text(
                                    "تغير كلمة المرور",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                              decoration: BoxDecoration(
                                  color: kohel,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  )
                ]),
              ),
            ),
          ),
        ));
  }
}
