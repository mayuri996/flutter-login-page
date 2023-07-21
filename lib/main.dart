import 'package:flutter/material.dart';
import 'login.dart';
import 'sign_in.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'login': (context) => MyLogin(),
      'sign_in': (context) => LoginPage(),
    },
  ));
}