// ignore_for_file: prefer_const_constructors
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_6419c10008/views/my_profile_ui.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfileUI(),
    ),
  );
}
