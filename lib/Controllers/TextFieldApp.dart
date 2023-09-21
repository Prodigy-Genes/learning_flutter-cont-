// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({super.key});

  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  TextEditingController textOfName = TextEditingController();

  String _displayText = '';

  String displayAllSelectedValue() {
    String name = textOfName.text;
    String result = 'Name is: $name';
    return result;
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold (
        body: Container(alignment: Alignment.center,
        child: Padding(padding: const EdgeInsets.all(20), child: ListView(children: <Widget>[
          TextField(
            keyboardType: TextInputType.text,
            controller: textOfName,
            style: const TextStyle(fontSize: 16, color: Colors.blue),
            decoration: InputDecoration(labelText: 'Your Name', hintText: 'In text', labelStyle: const TextStyle(fontSize: 17, color: Colors.red),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
          ),

          const SizedBox(height: 10.0,),
          
          Row(
            children: <Widget>[
              Container(
                width: 150.0,
                color: Colors.white24,
                child: ElevatedButton(
                  onPressed: (){setState(() {
                    _displayText = displayAllSelectedValue();
                  });},
                  
                  child: const Text('Press'),
                ),
              )
            ],
          ),

          const SizedBox(height: 10.0,),
          Text(_displayText, style: const TextStyle(fontSize: 20, color: Colors.redAccent),
          )
        ]
        ),
        ),
        ),
      );
    }
  
}