import 'package:flutter/material.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:geolocator/geolocator.dart';

class ChungUser extends StatefulWidget {
  @override
  _ChungUserState createState() => _ChungUserState();
}

class _ChungUserState extends State<ChungUser> {
  File _image;

  String dropval;
  void dropChange(String val){
    setState(() {
      dropval = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future getImage() async{
      var images = await ImagePicker.pickImage(source:ImageSource.gallery);
      setState(() {
        _image = images;
        print('image path $_image');
      });

    }
    // TODO: implement build
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
                margin: EdgeInsets.only(top: 50,),
                padding: EdgeInsets.all(12),
                child:(_image!=null)?Image.file(_image,fit:BoxFit.fill):Image.asset('assets/images/user2.png'),
              ),
              Container(
                child: FlatButton(
                  child: Text('اضافة صوه شخصيه',
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                  onPressed: (){
                    getImage();
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                width: 270,
                height: 50,
                child: Column(
                  children: [
                    DropdownButtonFormField(
                        elevation: 1,
                        hint: Text('data'),
                        isExpanded: true,
                        onChanged: dropChange,
                        value: dropval,
                        items: <String>['w', 'x', 'c']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            child: Text(value),
                            value: value,
                          );
                        }).toList()
                    ),
                  ],
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
                          fontSize: 17,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'رقم الجوال',
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
                          fontSize: 17,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'رقم الهويه',
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
                          fontSize: 17,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'صورة الهويه',
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
                          fontSize: 17,
                          color: Color(0xFFbdc6cf),
                          fontWeight: FontWeight.w800
                      ),
                      decoration: InputDecoration(
//                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'المكان علي الخريطه',
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
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    );
  }
}