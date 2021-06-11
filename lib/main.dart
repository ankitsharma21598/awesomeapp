//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs=await SharedPreferences.getInstance();
  runApp(MaterialApp(
    title: "Awesome App",
    home: Constants.prefs.getBool("loggedIN")==true?HomePage():LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context)=>LoginPage(),
      "/home":(context)=>HomePage()
    },
  ),
  );
}


