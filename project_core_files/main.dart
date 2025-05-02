import 'package:Tafwila/project/Tire%20Repair%20.dart';
import 'package:Tafwila/project/account.dart';
import 'package:Tafwila/project/petrol.dart';
import 'package:Tafwila/project/shop%20.dart';
import 'package:Tafwila/project/signup.dart';
import 'package:Tafwila/project/start.dart';
import 'package:Tafwila/project/start2.dart';
import 'package:flutter/material.dart';

import 'car winch.dart';
import 'chat1.dart';
import 'electricity Repair .dart';
import 'homebage.dart';
import 'login.dart';
import 'map.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: start(),
      theme:
          ThemeData(textTheme: TextTheme(titleLarge: TextStyle(fontSize: 20))),
      routes: {
        "map": (context) => map(),
        "login": (context) => login(),
        "signup": (context) => signup(),
        "homebage": (context) => homebage(),
        "chat": (context) => chat1(),
        "account": (context) => account(),
        "carwinch": (context) => carwinch(),
        "petrol": (context) => petrol(),
        "tirerepair": (context) => tirerepair(),
        "electricityRepair": (context) => electricityRepair(),
        "shop": (context) => shop(),
        "start": (context) => start(),
        "start2": (context) => start2(),
      },
    );
  }
}
