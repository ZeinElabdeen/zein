import 'package:flutter/material.dart';
import 'package:flutter_app/preview.dart';
import 'package:flutter_app/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class LoginForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 140,
                margin: EdgeInsets.only(top: 50,),
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 70,),
                width: 270,
                height: 50,
                child: (
                    TextField(
                      textInputAction: TextInputAction.send,
                      controller: null,
                      textAlign: TextAlign.center,
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
                margin: EdgeInsets.only(top: 30,),
                width: 270,
                height: 50,
                child: (
                    TextField(
                      obscureText: true,
                      autocorrect: false,
                      textInputAction: TextInputAction.send,
                      controller: null,
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        hintText: 'كلمو السر',
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
                margin: EdgeInsets.only(top: 70,),
                width: 270,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
                  },
                  child: Text('تسجيل دخول',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only( top: 55,),
                child: Text('نسيت كلمت السر؟',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.pink
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only( top: 50,),
                child: Text('الدخول باستخدام السوشل مديا',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.black54
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only( top: 60, bottom: 60,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0
                            ),
                          ]
                      ),
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebookF,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: (){},
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      margin: EdgeInsets.only(left: 15 , right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0
                            ),
                          ]
                      ),
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: (){},
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.lightBlueAccent,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0
                            ),
                          ]
                      ),
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.twitter,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black54,
//                endIndent: 5,
//                indent: 5,
                thickness: 1,

              ),
              Container(
                margin: EdgeInsets.only(top: 60 , bottom: 50),
                width: 270,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black54,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>User()));
                  },
                  child: Text('عضويه جديده',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25
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