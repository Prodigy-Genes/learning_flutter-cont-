import 'package:flutter/material.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        title: const Text(
          'Test Your Knowledge...',
          style: TextStyle(fontSize: 25.00, fontStyle: FontStyle.normal),
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          const Text(
            'Answer a few Questions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            child: const Text(
              'You Have Chosen Answer 1',
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            onPressed: null,
            child: const Text(
              'You Have Chosen Answer 2',
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            onPressed: null,
            child: const Text(
              'You Have Chosen Answer 3',
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
