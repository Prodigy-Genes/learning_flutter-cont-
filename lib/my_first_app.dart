import 'package:flutter/material.dart';
//import 'package:learning_flutter/my_container.dart';
import 'package:learning_flutter/layout_first_example.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});



  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatelessLayoutWidget()
    );
  }
}