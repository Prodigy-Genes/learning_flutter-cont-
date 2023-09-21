// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

// a simple example of TextField, where one can type the name
// and see the output below ; each time the user types a String data type or text, a stateful widget
// is created, however, after that when she re-type another text, the set state is called, which
// tells the framework to redraw the TextFieldExampleState widget and it's created again

class _TextFieldExampleState extends State<TextFieldExample> {

  String yourName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[const Padding(padding: EdgeInsets.all(32),
        child: Text('Type your Name Below!', style: TextStyle(fontSize: 30)
        ),
        ),
        TextField(
          //it reflects the text input on screen while typing
          onChanged: (String name){
            setState(() {
              yourName = name;
            }
            );
          },
        ),
        Padding(padding: const EdgeInsets.all(32),
        child: Text(yourName,
        style: const TextStyle(fontSize: 30),
        ),
        )
        ],
        
        ),
        
      ),
    );
  }
}
