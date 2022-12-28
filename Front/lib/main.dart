import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gloomyfantasy/login_register/register.dart';

import 'login_register/first_page.dart';
import 'login_register/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login_page": (context) => const Login(title: 'Login'),
        "register_page": (context) => const Register(title: 'Register'),
        'first_page' : (context) => const Choose(title: 'Gloomy Fantasy'),
      },
      title: 'Node server demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Choose(title: 'Gloomy Fantasy'),
    );
  }
}