import 'package:flutter/material.dart';

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Knowledge Test',
          style: TextStyle(
            fontSize: 25.00,
            fontStyle: FontStyle.normal,         ),
        ),
        backgroundColor: Colors.redAccent,
      ),

      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(-0.2),
        child: Text('This is a container Widget',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),),
      ),

      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        backgroundColor: Colors.redAccent,
        onPressed: null,
        child: Icon(Icons.add),
      )
    );
  }
}