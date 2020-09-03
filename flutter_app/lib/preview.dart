import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PreviewLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 98,
                width: 270,
                margin: EdgeInsets.only(top: 104, bottom: 35),
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                width: 270,
                height: 50,
                child: (
                    TextField(
                      textInputAction: TextInputAction.send,
                      controller: null,
                      textAlign: TextAlign.right,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        hintText: 'اسم المستخدم',
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 20
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
                      textInputAction: TextInputAction.send,
                      controller: null,
                      textAlign: TextAlign.right,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        hintText: 'بريك الالكتروني',
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 20
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
                      textInputAction: TextInputAction.send,
                      controller: null,
                      textAlign: TextAlign.right,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        hintText: 'رقم الجوال',
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 20
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
                      textInputAction: TextInputAction.send,
                      controller: null,
                      textAlign: TextAlign.right,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        hintText: 'كلمة المرور',
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 20
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
                      textInputAction: TextInputAction.send,
                      controller: null,
                      textAlign: TextAlign.right,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        hintText: 'اعادة كلمة المرور',
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 20
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only( bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 130,
                      height: 65,
//                      margin: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          RaisedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Continue',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 12,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 65,
//                      margin: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0
                            ),
                          ]
                      ),
                     child: Column(
                       children: [
                         RaisedButton(
                           onPressed: () {},
                           child: Padding(
                             padding: EdgeInsets.all(3),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Text(
                                   'Continue',
                                   style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w700,
                                     color: Colors.white,
                                   ),
                                 ),
                                 Icon(
                                   Icons.arrow_forward,
                                   color: Colors.white,
                                   size: 12,
                                 )
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                    ),
                    Container(
                      child: Text('اختر النوع',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('التالي',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.assignment_ind),
            title: new Text('Messages'),
          ),
        ],
      ),
    );
  }

}