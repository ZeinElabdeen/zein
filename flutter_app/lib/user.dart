import 'package:flutter/material.dart';
import 'package:flutter_app/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chung-user.dart';


class User extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text('تعديل البينات',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.white
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.white,
                margin: EdgeInsets.only(top: 50, bottom: 35),
                child: Image.asset('assets/images/user.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                width: 270,
                height: 50,
                child: (
                    TextField(
                      autofocus: false,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'اسم المستخدم',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                width: 270,
                height: 50,
                child: (
                    TextField(
                      autofocus: false,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'البريد الالكتروني',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                width: 270,
                height: 50,
                child: (
                    TextField(
                      autofocus: false,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'رقم الجوال',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                width: 270,
                height: 50,
                child: (
                    TextField(
                      autofocus: false,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'كلمة المرور',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                width: 270,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0
                      ),
                    ]
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Index()));
                  },
                  child: Text('حفظ التغيرات',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

