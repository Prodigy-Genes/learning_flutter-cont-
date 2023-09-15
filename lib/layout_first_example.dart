import 'package:flutter/material.dart';
import 'package:learning_flutter/questions.dart';
import 'package:learning_flutter/next_page.dart' as next_page;
import 'package:learning_flutter/snackbar.dart';



final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();




class MyStatelessLayoutWidget extends StatelessWidget {
  MyStatelessLayoutWidget({Key? key}): super(key: key);

  final questions = [
    Questions(question: 'Are you impulsive?'),
    Questions(question: 'Do you get angry easily?'),
    Questions(question: 'Are you a sloth?'),
    Questions(question: 'Do you cheat others?'),
  ];

  @override 
  
  Widget build(BuildContext context){
    
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(actions: <Widget>[
        IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(snackbarOne);
        }, icon: const Icon(Icons.add_alert),
        tooltip: 'Show Snackbar',),

        IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(snackbarTwo);
        }, icon: const Icon(Icons.search),
        tooltip: 'Search',),

        IconButton(onPressed: (){
          next_page.clickNextPage(context);
        }, icon: const Icon(Icons.navigate_next),
        tooltip: 'Next page',),

      ],

      leading: IconButton(icon: const Icon(Icons.menu),
      tooltip: 'Navigation menu',
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(snackbarThree);
      },),

      title: const Text('Knowledge Test',
      style: TextStyle(fontSize: 25.00,
      fontStyle: FontStyle.normal)),

      backgroundColor: Colors.redAccent,

      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(questions[0].question,
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
                next_page.clickNextQuestion(context);
              },
              child: const Text('Next Question',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),),
              ),
            
            IconButton(onPressed: (){
              next_page.clickNextQuestion(context);
            }, icon: const Icon(Icons.navigate_next),
            tooltip: 'Next Question',)
        ],
      ),
    );
  }

  
}