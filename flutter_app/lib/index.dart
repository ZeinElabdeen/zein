import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import 'dusing.dart';
import 'login_form.dart';

// ignore: must_be_immutable
class Index extends StatelessWidget{
//  List<String> images = ["assets/images/user2.png"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 100,
        title:(
        Text('')
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
//          Container(height: 100,
//          color: Colors.black,
//          ),
          Container(
            child:Padding(
              padding: EdgeInsets.all(10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            width: 1.0,
                            color: Colors.black54
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 3.0
                          ),
                        ]
                    ),
                    width: 55,
                    height: 55,
                    child: Icon(Icons.create,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            width: 0.0,
                            color: Colors.black54
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 5.0),
                              blurRadius: 5.0
                          ),
                        ]
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.search,
                          size: 25,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        hintText: 'البريد الالكتروني',

                        contentPadding:
                        const EdgeInsets.only(right: 14.0, left: 14.0, bottom: 9.0, top: 9.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            width: 1.0,
                            color: Colors.black54
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 3.0
                          ),
                        ]
                    ),
                    width: 55,
                    height: 55,
                    child: Icon(Icons.verified_user,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: (
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 2,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0
                        ),
                      ]
                  ),
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 40),
                  child: FlatButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Dus()));},
                    child: (
                        Column(
                          children: [
                            Container(
                              child: Image.asset('assets/images/logo.png',
                                width: 90,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 19),
                              child: Text('ديكور',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black54
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ],
            )
            ),
          ),
        ],
      )
    );
  }
}

