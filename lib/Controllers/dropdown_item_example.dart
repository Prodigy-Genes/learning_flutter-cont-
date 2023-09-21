// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  _DropDownExampleState createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {

  String yourName = '';
  String youAge= '';
  final _cities = ["Calcutta", "Delhi", "Mumbai", "Chennai", "Bangalore"];
  String _youHaveSelected = '';
  String  _displayText = '';


@override
void initState() {
  super.initState();
  _youHaveSelected = _cities[0];

}

TextEditingController textOfAge = TextEditingController();
TextEditingController textOfName = TextEditingController();

void selectedDropDownItem(String theValueSelected){
  setState(() {
    _youHaveSelected = theValueSelected;
  });
}

String displayAllSelectedValue(){
  String name = textOfName.text;
  int age = int.parse(textOfAge.text);
  String city = _youHaveSelected;

  String displayAllSelectedValue = 'Your name is $name, your age is $age and you live in $city';

  return displayAllSelectedValue;
}

void _resetButton(){
  textOfName.text = '';
  textOfAge.text = '';
  _youHaveSelected = _cities[0];
  _displayText = '';
}


@override
Widget build(BuildContext context){
  return Scaffold(
    //resizeToAvoidBottomPadding: false,
    body: Container(
      margin: const EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(10),
          child: Text('Type your name, age, and select the city from the drop down menu bleow',
          style: TextStyle(fontSize: 25),
          ),
          ),

          TextField(
            keyboardType: TextInputType.text,
            controller: textOfName,
            style: const TextStyle(fontSize: 16, color: Colors.blue),

            decoration: InputDecoration(
              labelText: 'Your Name',
              hintText: 'In Text...',
              labelStyle: const TextStyle(
                fontSize: 17.0, color: Colors.red
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),
              )
            ),
          ),

          const SizedBox(height: 10.0,),
          TextField(
            keyboardType: TextInputType.text,
            controller: textOfAge,
            style: const TextStyle(fontSize: 16, color: Colors.blue),

            decoration: InputDecoration(labelText: 'Your Age',
            hintText: 'In number...',
            labelStyle: const TextStyle(fontSize: 17, color: Colors.red),
            
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
            )
            ),            
          ),

          const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.only(left: 32, top: 10),
          child: DropdownButton<String>(items: _cities.map((String nameOfCities){
            return DropdownMenuItem<String>(value: nameOfCities,child: Text(nameOfCities),);
          }).toList(),
          onChanged: (String? theValueSelected){
            selectedDropDownItem(theValueSelected??'');
          },
          value: _youHaveSelected,
          iconSize: 50,
          ),
          ),

          const SizedBox(height: 100,),
          Row(
            children: <Widget>[
              SizedBox(
                width: 150.0,
                child: ElevatedButton(
                  onPressed: (){setState(() {
                    _displayText = displayAllSelectedValue();
                  });},
                  
                  child: const Text('Press', style: TextStyle(fontSize: 25, color: Colors.redAccent), )
                ),
              ),

              Container(width: 25.0,),
              SizedBox(width: 150, 
              child: ElevatedButton(
                onPressed: (){setState(() {
                  _resetButton();
                });},
                child: const Text('Reset', style: TextStyle(fontSize: 25.0, color: Colors.yellow),)),)
            ],
          ),

          Padding(padding: const EdgeInsets.all(8.0),
          child: Text(_displayText,
          style: const TextStyle(fontSize: 30.0, color: Colors.blueAccent),
          ),
          )

        ],
      ),
    ),
  );
}}

