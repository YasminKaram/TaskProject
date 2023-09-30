import 'package:flutter/material.dart';
import 'package:taskproject/Screen1.dart';
import 'package:taskproject/Screen2.dart';
import 'package:taskproject/Screen3.dart';
import 'package:taskproject/home.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,

      initialRoute:Screen1.routeName,
      routes:{
      Screen1.routeName:(context) => Screen1(),
        Screen2.routeName:(context) => Screen2(),
        Screen3.routeName:(context) => Screen3(),
        Home.routeName:(context) => Home(),
      } ,
    );
  }
}
