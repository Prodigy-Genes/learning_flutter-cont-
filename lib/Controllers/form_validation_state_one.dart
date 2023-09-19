import 'package:flutter/material.dart';

//inheriting a Stateful Widget makes a class immutable

class FormValidationAndStateApp extends StatefulWidget {
  const FormValidationAndStateApp({super.key});

  // the widget returns the state in createstate() method

  @override
  
  _FormValidationAndStateAppState createState() => _FormValidationAndStateAppState();
}

// a simple example of state where the user presses a button to see a list of quotes

class _FormValidationAndStateAppState extends State<FormValidationAndStateApp> {

  final _quotes = [
    '',
    'Life is a Tragedy',
    'Life is Beautiful',
    'Life consists of problems to solve'
  ];

  int _questionIndex = 0;

int _answerQuestions() {
  // calling the setState() method makes the change and redraw the widget

  setState((){
    _questionIndex = _questionIndex + 1;
  });

  if (_questionIndex == 4) {
    _questionIndex = 0;
  }
  return _questionIndex;
}

@override

Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              _answerQuestions();
            },
            style: ElevatedButton.styleFrom(
              disabledBackgroundColor: Colors.blueAccent,
            ),
            child: const Text(
              'Press the Button to see a new quote!',
              style: TextStyle(fontSize: 22, //color: Colors.blue
              ),
            ),
          ),
          Text(
            _quotes[_questionIndex],
            style: const TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
        ],
      ),
    ),
  );
}

}

