import 'package:flutter/material.dart';
import 'package:flutter_mini_project/pages/login.dart';
import 'package:flutter_mini_project/pages/signUp.dart';
import 'package:flutter_mini_project/pages/welcom.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=>const Welcom(),
        "/signup":(context)=>Signup(),
        "/login":(context)=>Login(),
      },
    );
  }
}