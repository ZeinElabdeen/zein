import 'package:flutter/material.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ChungUser extends StatelessWidget{
  File _image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future getImage() async{
      var images = await ImagePicker.pickImage(source:ImageSource.gallery);
      _image = images;
      print('hjhhimage $images');

    }
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black54
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0
                      ),
                    ]
                ),
                height: 150,
                width: 150,
                margin: EdgeInsets.only(top: 50, bottom: 35),
                child:(_image!=null)?Image.file(_image,fit:BoxFit.fill):Image.asset('assets/images/user2.png'),
              ),
              Container(
                child: FlatButton(
                  child: Text('upload'),
                  onPressed: (){
                    getImage();
                  },
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
                        hintText: 'اسم المستخدم',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
//                          borderRadius: BorderRadius.circular(12),
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
                        hintText: 'اسم المستخدم',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
//                          borderRadius: BorderRadius.circular(12),
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
                        hintText: 'اسم المستخدم',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
//                          borderRadius: BorderRadius.circular(12),
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
                        hintText: 'اسم المستخدم',
                        contentPadding:
                        const EdgeInsets.only(right: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
//                          borderRadius: BorderRadius.circular(12),
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
                  onPressed: (){},
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

