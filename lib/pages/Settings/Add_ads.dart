import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:ktabna/main.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// ignore: library_prefixes

import 'package:ktabna/pages/settings/CreateAcconut.dart';

class uploudd extends StatefulWidget {
  const uploudd({key});

  @override
  State<uploudd> createState() => _uplouddState();
}

class _uplouddState extends State<uploudd> {
  File? _imagepath;
  String? _imageName;
  String? _imageData;
  var UnaverNAME;
  var CollegeName;
  var districts1;

  final NameBook = TextEditingController();
  final Email = TextEditingController();
  final PhoNamber = TextEditingController();
  final NotAds = TextEditingController();

  SizedBox TextF(var name, var exampel, var inText, var num) {
    double the_length;
    if (num == 1) {
      the_length = 350;
    } else
      the_length = 170;
    return SizedBox(
      width: the_length,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        controller: inText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: "    $name   ",
            labelStyle: TextStyle(
                fontSize: 15,
                color: Color(0XFFF4C179),
                fontWeight: FontWeight.w700),
            hintText: "   $exampel ",
            suffix: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color(0xff2B5289),
                  width: 2,
                )),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff2B5289), width: 2),
            )),
      ),
    );
  }

  SizedBox TextForm(var name, var exampel, var inText) {
    return SizedBox(
      width: 350,
      child: TextField(
        maxLines: 5,
        keyboardType: TextInputType.emailAddress,
        controller: inText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: "    $name   ",
            labelStyle: TextStyle(
                fontSize: 35,
                color: Color(0XFFF4C179),
                fontWeight: FontWeight.w700),
            hintText: "   $exampel ",
            suffix: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color(0xffA3DACB),
                  width: 2,
                )),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA3DACB), width: 2),
            )),
      ),
    );
  }

//=================================================================

//=================================================================
  List<String> universities = [
    "جامعة الملك سعود",
    "جامعة الأميرة نورة ",
    "جامعة الإمام ",
    "جامعة الفيصل",
    "جامعة الأمير سطام",
    "الكلية التقنية"
  ];

  SizedBox districtsINRiadh(
    String TitleName,
    var nameCo,
  ) {
    String selectItem = '$TitleName';
    return SizedBox(
      width: 170,
      child: Center(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff2B5289), width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xff2B5289),
                  ))),
          hint: Center(
              child: Text(
            "     $TitleName   ",
            // "   اسم الجامعة",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 15,
                color: Color(0XFFF4C179)),
          )),
          // value: selectItem,
          items: districtsInRiyadh
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item,
                      style:
                          TextStyle(fontSize: 20, color: Color(0XFFF4C179)))))
              .toList(),
          onChanged: (value) {
            setState(() {
              // var finalname;
              selectItem = value!;

              districts1 = value;
              // print(CollegeName);
            });
          },
        ),
      ),
    );
  }

  SizedBox Universities(
    String TitleName,
    var nameCo,
  ) {
    String selectItem = '$TitleName';
    return SizedBox(
      width: 170,
      child: Center(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff2B5289), width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xff2B5289),
                  ))),
          hint: Center(
              child: Text(
            "     $TitleName   ",
            // "   اسم الجامعة",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 15,
                color: Color(0XFFF4C179)),
          )),
          // value: selectItem,
          items: universities
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Color(0XFFF4C179)))))
              .toList(),
          onChanged: (value) {
            setState(() {
              // var finalname;
              selectItem = value!;

              CollegeName = value;
              // print(CollegeName);
            });
          },
        ),
      ),
    );
  }

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

  SizedBox SectionName(
    String TitleName,
    var nameUnaverNAME,
  ) {
    String selectItem = '$TitleName';
    return SizedBox(
      width: 170,
      child: Center(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff2B5289), width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 2, color: Color(0xff2B5289)))),

          hint: Center(
              child: Text(
            "     $TitleName   ",
            // "   اسم الجامعة",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 15,
                color: Color(0XFFF4C179)),
          )),
          // value: selectItem,
          items: disciplines
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0XFFF4C179),
                          fontWeight: FontWeight.w900))))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectItem = value!;
              UnaverNAME = value;
            });
          },
        ),
      ),
    );
  }

//------------This is get path images----------------
  final ImagePicker imagePicker = ImagePicker();

  Future<void> getimages() async {
    final XFile? getimage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    //if (getimage == null) return;
    setState(() {
      //print(File(getimage.path));
      if (getimage == null) {
        _imagepath == "Upload/image_picker8903170732917423079.jpg";
      } else {
        _imagepath = File(getimage.path);
        _imageName = getimage.path.split('/').last;
        _imageData = base64Encode(_imagepath!.readAsBytesSync());
        print(_imagepath);
        print(_imageName);
        print(_imageData);
      }
    });
  }

  var country = null;
//--------------This is method is add images--------------------
  Future<void> upload() async {
    try {
      var url = "C:\development\App-Flutter\ktabna2-master\Upload";
      var res = await http.post(Uri.parse(url), body: {
        "data": _imageData,
        "name": _imageName,
      });
      var response = jsonDecode(res.body);
      if (response['success'] == "true") {
        print("uploudd");
      } else
        print("no images");
    } catch (e) {
      print(e);
    }
    // if (_imagepath == null) return;
    // String imageCode = base64Encode(_imagepath!.readAsBytesSync());
    // String id = _imagepath!.path.split('/').last;

    // var response = await http.post(Uri.parse(url), body: {
    //   "id": id,
    //   "imageCode": imageCode,
    // });
    // var res = jsonDecode(response.body);
    // if (res['suvvess'] == "true") {
    //   print("uploudd");
    // } else
    //   print("no images");
  }

//=======================================================

  Future insertadd() async {
    if (NameBook.text.toString().isEmpty ||
        PhoNamber.text.toString().isEmpty ||
        CollegeName.toString().isEmpty ||
        UnaverNAME.toString().isEmpty ||
        NotAds.text.toString().isEmpty ||
        districts1.toString().isEmpty ||
        _imageName.toString().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 5),
          content: Text(
            "جميع البيانات مطلوبة",
            style: TextStyle(color: Colors.red, fontSize: 20),
          )));
    } else {
      if (country == null) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: Duration(seconds: 5),
            content: Text(
              "يجب ان تتعاهد لدفع العمولة",
              style: TextStyle(color: Colors.red, fontSize: 20),
            )));
      } else {
        String TheUrl = "http://104.234.147.107/ads - Copy.php";
        var rep = await http.post(Uri.parse(TheUrl), headers: {
          "Accept": "application/json"
        }, body: {
          "book_name": NameBook.text.toString(),
          "phone2": PhoNamber.text.toString(),
          "collage": CollegeName.toString(),
          "spe": UnaverNAME.toString(),
          "com": NotAds.text.toString(),
          "loc": districts1.toString(),
          "name": _imageName,
          "data": _imageData
        });
        var respb = json.decode(rep.body);
        print(respb);
        if (respb == "done add") {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              duration: const Duration(seconds: 5),
              content: Text(
                "تم إضافة الإعلان",
                style: TextStyle(color: Colors.green, fontSize: 20),
              )));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            width: 800,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/bacground2.png'),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //     fit: BoxFit.fill,
                      //     image: AssetImage('assets/bacground-.png'),
                      //   ),
                      // ),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              " إضافة الإعلان",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xff2B5289),
                              ),
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(right: 60, left: 70),
                            //   height: 54.0,
                            //   width: 224.0,
                            //   child: Container(
                            //       decoration: BoxDecoration(
                            //           border: Border.all(
                            //               color: Color(0XFFF4C179), width: 3),
                            //           color: Color(0xff42A9D2),
                            //           borderRadius: BorderRadius.only(
                            //               bottomLeft: Radius.circular(40),
                            //               bottomRight: Radius.circular(40))),
                            //       child: const Center(
                            //         child: Text(
                            //           " اضافة أعلان",
                            //           style: TextStyle(
                            //               fontSize: 30,
                            //               color: Color(0xff2B5289),
                            //               fontWeight: FontWeight.w700),
                            //           textAlign: TextAlign.center,
                            //         ),
                            //       )),
                            // ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            // Row(
                            //   children: [
                            //     Container(
                            //       child: Text(
                            //         "الــصور     ",
                            //         style: TextStyle(
                            //             color: Color(0XFFF4C179), fontSize: 25),
                            //       ),
                            //       decoration: BoxDecoration(
                            //           color: Color(0xff2B5289),
                            //           borderRadius: BorderRadius.only(
                            //             topLeft: Radius.circular(60),
                            //             bottomLeft: Radius.circular(60),
                            //           )),
                            //     ),
                            //   ],
                            // ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 392,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 120,
                                            width: 120,
                                            child: Container(
                                              color: Colors.white,
                                              child: _imagepath == null
                                                  ? Container(
                                                      child: Stack(
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                              // color: Colors.red,
                                                              child: IconButton(
                                                                onPressed:
                                                                    getimages,
                                                                icon: Icon(
                                                                    Icons.add),
                                                                color: Color(
                                                                    0xffA3DACB),
                                                                iconSize: 20,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Text(
                                                                "اضافة صورة",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xffA3DACB),
                                                                    fontSize:
                                                                        13),
                                                              )),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color:
                                                              Color(0xffA3DACB),
                                                          width: 1,
                                                        ),
                                                      ),
                                                    )
                                                  : Image.file(_imagepath!),
                                            ),
                                          ),
                                        ],
                                      ),

                                      decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 236, 236, 236),
                                          // border: Border.all(
                                          //   color: Color(0xff42A9D2),
                                          //   width: 2,
                                          ),
                                      //     borderRadius: BorderRadius.only(
                                      //       topLeft: Radius.circular(60),
                                      //       bottomLeft: Radius.circular(60),
                                      //     )
                                      //     ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextF('      اسم الكتاب   ', 'هندسة برمجيات',
                                      NameBook, 1),
                                  //   SectionName(' اسم القسم', CollegeName),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Universities("   اسم الجامعة", UnaverNAME),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SectionName(' اسم القسم', CollegeName),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: TextForm(
                                  '        نص الاعلان ',
                                  'كتاب  نسخت 2021  الكتاب شبه جديد وسعر الكتاب:60 ريال',
                                  NotAds),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  districtsINRiadh('اختيار الحي', districts1),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  TextF('       رقم التواصل   ', ' 0555511111',
                                      PhoNamber, 2),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Radio(
                                      value: 'ok',
                                      groupValue: country,
                                      onChanged: (val) {
                                        setState(() {
                                          country = val;
                                          // print(country);
                                        });
                                      }),
                                  Expanded(
                                    child: Text(
                                      "اتعهد واقسم بالله أنا المعلن أن أدفع عمولة الموقع وهي 10% من قيمة البيع سواء تم البيع عن طريق الموقع أو بسببه",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[800]),
                                      maxLines: 3,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints.tightFor(
                                      width: 350, height: 50),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xffA3DACB),
                                          shape: BeveledRectangleBorder(
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(4))),
                                      onPressed: () {
                                        upload();
                                        insertadd();
                                        setState(() {
                                          // print(UnaverNAME);
                                          // print(CollegeName);
                                          // print(districts1);
                                          // print(NameBook.text.toString());
                                          // print(NotAds.text.toString());
                                          // print(PhoNamber.text);

                                          // print(pass.text.toString());

                                          //final Name = TextEditingController();
                                        });
                                      },
                                      child: Text(
                                        "اضافة أعلان",
                                        style: TextStyle(
                                            color: Color(0xff2B5289),
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 120,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
