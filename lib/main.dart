import 'package:flutter/material.dart';
import 'package:wiget_prac/view/day_five.dart';
import 'package:wiget_prac/view/login_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.amber
      ),
      themeMode: ThemeMode.light,
      title: 'This is title',
      color: Colors.red,
      home: DayFive(),
    );
  }
}
