import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ktabna/All_colors.dart';

Row TitelPage(BuildContext contex, String text1,colors) {











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


  // BuildContext contex="home";
  return Row(
    children: [
      //keyboard_backspace
      IconButton(
          onPressed: () {
            ;
            Navigator.pop(contex);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 35,
            color: colors,
          )),
      SizedBox(
        width: 34,
      ),
      Container(
        //margin: EdgeInsets.only(left: 70, right: 60),
        height: 54.0,
        width: 245.0,
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: yellow, width: 2),
                color: green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Center(
              child: Text(
                '$text1',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Cairo',
                  color: kohel,
                  //fontWeight: FontWeight.w700
                ),
                textAlign: TextAlign.center,
              ),
            )),
      ),
    ],
  );
}

Container ttiittllee(String text) {
  return Container(
    child: Text(
      "$text   ",
      style: TextStyle(color: Color(0xffF4AC47), fontSize: 25),
    ),
    decoration: BoxDecoration(
        color: Color(0xff072A52),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          bottomLeft: Radius.circular(60),
        )),
  );
}

SizedBox Search(var name, var exampel, var inText) {
  return SizedBox(
    width: 390,
    height: 69,
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      controller: inText,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "  $name   ",
          labelStyle: TextStyle(
            fontSize: 25,
            color: Colors.grey,
          ),
          hintText: "   $exampel ",
          prefixIcon: Icon(
            Icons.search,
            size: 35,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color(0xff072A52),
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff072A52), width: 2),
          )),
    ),
  );













  
}





