import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/login_form.dart';
import 'package:flutter_app/preview.dart';
import 'package:flutter_app/user.dart';

import 'chung-user.dart';
import 'dusing.dart';
import 'index.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Book App',
      routes: {
        '/':(context)=> Login(),
        'LoginForm':(context)=> LoginForm(),
        'PreviewLogin':(context)=> PreviewLogin(),
        'User':(context)=> User(),
        'ChungUser':(context)=> ChungUser(),
        'Index':(context)=> Index(),
        'Dus':(context)=> Dus(),
      },
    );
  }
}


