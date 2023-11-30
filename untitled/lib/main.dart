import 'package:flutter/material.dart';
import 'package:untitled/Pages/firstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookList(),
      );
  }
}
