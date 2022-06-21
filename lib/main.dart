import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/view/jorge.dart';
//import 'package:firebase_crashlytics/firebase_crashlytics.dart';
//import 'package:firebase_analytics/firebase_analytics.dart';

//import 'view/firebase_1.dart';
import 'view/splassh.dart';
//import 'view/listview_2.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Splash()
    );
  }
}


