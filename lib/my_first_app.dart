import 'package:flutter/material.dart';
import 'package:learning_flutter/my_container.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});


  @override

  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyContainerWidget(),
    );
  }
}