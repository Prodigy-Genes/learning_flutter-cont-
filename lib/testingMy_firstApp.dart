// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:learning_flutter/myStateless_Scaffold.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessScaffoldWidget()
    );
  }
}
