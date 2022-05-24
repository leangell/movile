
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/view/color.dart';
//import 'package:flutter_application_1/view/home_view.dart';
import 'package:flutter_application_1/view/images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagenLeo(),//MyColor() //HomeView()
    );
  }
}