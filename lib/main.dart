
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/listview_2.dart';
//import 'package:flutter_application_1/view/color.dart';
//import 'package:flutter_application_1/view/contador.dart';
//import 'package:flutter_application_1/view/count.dart';
//import 'package:flutter_application_1/view/count_screen.dart';
//import 'package:flutter_application_1/view/home_view.dart';
//import 'package:flutter_application_1/view/images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:  ListView2(), // Conttador()//MyColor() //ImagenLeo(), //HomeView()
    );
  }
}