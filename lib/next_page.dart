import 'package:flutter/material.dart';
import 'package:learning_flutter/myStateless_Scaffold.dart';
import 'package:learning_flutter/questions.dart';
import 'package:learning_flutter/snackbar.dart';

void clickNextPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Know Yourself'),
      ),
      body: const Center(
        child: Text(
          'Dig deep into every layer of your mind to find yourself',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }));
}

void clickNextQuestion (BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    final questions = [
    Questions(question: 'Are you impulsive?'),
    Questions(question: 'Do you get angry easily?'),
    Questions(question: 'Are you a sloth?'),
    Questions(question: 'Do you cheat others?'),
  ];

  return Scaffold(
    key: scaffoldKey,
    appBar: AppBar(
      title: const Text('Know yourself...'),
    ),

    body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(questions[1].question,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 25),),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,
              width: 1,
              ),
            ),

            padding:const EdgeInsets.all(10),
            width: 350,
            child: Card(
              elevation: 20,
              color: Colors.red,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackbarFour);
            }, 
            child: const Text('No. Not at all...',
            style: TextStyle(fontSize: 22,
            color: Colors.white,),
            ),

            )
            )
          ),

          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,
              width: 1,
              ),
            ),

            padding:const EdgeInsets.all(10),
            width: 350,
            child: Card(
              elevation: 20,
              color: Colors.red,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackbarFive);
            } ,
            child: const Text('I try to control it...',
            style: TextStyle(fontSize: 22,
            color: Colors.white,),
            ),

            )
            )
          ),

          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,
              width: 1,
              ),
            ),

            padding:const EdgeInsets.all(10),
            width: 350,
            child: Card(
              elevation: 20,
              color: Colors.red,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackbarSix);
            }, 
            child: const Text('I am very impulsive!',
            style: TextStyle(fontSize: 22,
            color: Colors.white,),
            ),
            ),

           
            )
          ),

           ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
              onPressed: (){
                clickNextQuestion(context);
              },
              child: const Text('Next Question',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),),
              ),
            
            IconButton(onPressed: (){
              clickNextQuestion(context);
            }, icon: const Icon(Icons.navigate_next),
            tooltip: 'Next Question',)
        ],
      ),
  );
  }));
}