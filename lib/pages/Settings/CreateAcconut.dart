import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:email_validator/email_validator.dart';
import 'singin.dart';
import 'package:ktabna/All_colors.dart';

class Create_Account extends StatefulWidget {
  const Create_Account({key});

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
  //String selectItem = 'item1';

  @override
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Number = TextEditingController();
  TextEditingController pass = TextEditingController();
  //TextEditingController NewPass = TextEditingController();

  var UnaverNAME;
  var CollegeName;
  List<String> universities = [
    "جامعة الملك سعود",
    "جامعة الأميرة نورة   ",
    "جامعة الملك عبدالعزيز",
    "جامعة الإمام ",
    "جامعة الفيصل",
    "جامعة الفيصلية",
    "جامعة اليمامة",
    "جامعة عفت",
    "جامعة الفيصلية",
    "الكلية التقنية"
  ];

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

  List<String> districtsInRiyadh = [
    "العزيزية",
    "الفاروق",
    "الحمراء",
    "المنصورة",
    "النهضة",
    "القويعية",
    "الربوة",
    "الروضة",
    "الشفاء",
    "اليرموك",
    "الرياض الجديدة",
    "الشهداء",
    "الزهراء",
    "الجزيرة",
    "الملك عبد الله",
    "الفيحاء",
    "النهضة ",
    "العليا",
    "المطار القديم",
    "السليمانية",
    "الثمامة",
    "الورود",
    "الياسمين"
  ];

//This is method TextField
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
                  fontSize: 20, color: yellow, fontWeight: FontWeight.w700),
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

  //---------------------------------method List Universities-----------------------
  SizedBox Universities(
    String TitleName,
    var nameCo,
  ) {
    String selectItem = '$TitleName';
    return SizedBox(
      width: 175,
      child: Center(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kohel, width: 4),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 4,
                    color: kohel,
                  ))),
          hint: Center(
              child: Text(
            "     $TitleName   ",
            // "   اسم الجامعة",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 15, color: yellow),
          )),
          // value: selectItem,
          items: universities
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item,
                      style: TextStyle(fontSize: 15, color: yellow))))
              .toList(),
          onChanged: (value) {
            setState(() {
              // var finalname;
              selectItem = value!;
//Listهاذي القيمة النهائيه لل {
              CollegeName = value;
              // }
            });
          },
        ),
      ),
    );
  }

//==================================SectionName============

  SizedBox SectionName(
    String TitleName,
    var nameUnaverNAME,
  ) {
    String selectItem = '$TitleName';
    return SizedBox(
      width: 175,
      child: Center(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kohel, width: 4),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 4, color: kohel))),

          hint: Center(
              child: Text(
            "     $TitleName   ",
            // "   اسم الجامعة",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 15, color: yellow),
          )),
          // value: selectItem,
          items: disciplines
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item,
                      style: TextStyle(
                          fontSize: 11,
                          color: yellow,
                          fontWeight: FontWeight.w800))))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectItem = value!;

              //Listهاذي القيمة النهائيه لل {
              UnaverNAME = value;
              // }
            });
          },
        ),
      ),
    );
  }

  String _errorMesssage = "";

  Future insertacc() async {
    String patttern = r'(?:\+?0*?966)?0?(5[0-9]{8})';
    RegExp regExp = new RegExp(patttern);

    if (Name.text.toString().isEmpty ||
        Email.text.toString().isEmpty ||
        Number.text.toString().isEmpty ||
        pass.text.toString().isEmpty ||
        UnaverNAME.toString().isEmpty ||
        CollegeName.toString().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 5),
          content: Text(
            "جميع البيانات مطلوبة",
            style: TextStyle(color: Colors.red, fontSize: 20),
          )));
    } else if (!EmailValidator.validate(Email.text.toString(), true)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: const Duration(seconds: 5),
          content: Text(
            "يرجى وضع إيميل صحيح",
            style: TextStyle(color: Colors.red, fontSize: 20),
          )));
    } else if (Number.text.toString().length < 10 ||
        !regExp.hasMatch(Number.text)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: const Duration(seconds: 5),
          content: Text(
            "يرحى التأكد من رقم الهاتف على أن يكون رقم صحيح",
            style: TextStyle(color: Colors.red, fontSize: 20),
          )));
    } else {
      String Urll = "https://104.234.147.107/signup.php";
      var res = await http.post(Uri.parse(Urll), headers: {
        "Accept": "application/json"
      }, body: {
        "email": Email.text.toString(),
        "name": Name.text.toString(),
        "passwords": pass.text.toString(),
        "phone": Number.text.toString(),
        "spe": UnaverNAME.toString(),
        "collage": CollegeName.toString()
      });
      var resp = json.decode(res.body);
      print(resp);
      if (resp['result'] == "done add") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: const Duration(seconds: 5),
            content: Text(
              "تم إنشاء الحساب بنجاح",
              style: TextStyle(color: Colors.red, fontSize: 20),
            )));
      } else if (resp['result'] == "already") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: const Duration(seconds: 5),
            content: Text(
              "البريد الإلكتروني او رقم الهاتف مسجل مسبقا , في حال نسيان كلمة السر يرجى استرجاعها",
              style: TextStyle(color: Colors.red, fontSize: 20),
            )));
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bacground2.png'), fit: BoxFit.fill),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 40,
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
                          "انشاء  حســاب",
                          style: TextStyle(
                              color: kohel,
                              fontSize: 33,
                              fontWeight: FontWeight.bold),
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
                          child: TextF(
                              'البريد الاكتروني', 'test@hotmi.com', Email),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 20),
                          child: TextF('      الاســــم   ', 'محمد', Name),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 20),
                          child:
                              TextF('     رقم الجوال   ', '0551111111', Number),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 20),
                          child:
                              TextF('     كلمة المرور  ', 'كلمة المرور ', pass),
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
                                    print(CollegeName);
                                    print(UnaverNAME);
                                    print(Name.text.toString());
                                    print(Email.text.toString());
                                    print(Number.text);
                                    print(pass.text.toString());
                                    insertacc();
                                  });
                                },
                                child: Text(
                                  "انشاء  حســاب",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
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
        ),
      )),
    );
  }

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMesssage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMesssage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMesssage = "Invalid Email Address";
      });
    }
  }
}
