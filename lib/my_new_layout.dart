import 'package:flutter/material.dart';
import 'package:learning_flutter/snackbar_and_page.dart';

class MyNewLayout extends StatelessWidget{ const MyNewLayout({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(snackbarOne);
          }, 
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          ),

          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(snackbarTwo);
          }, 
          icon: const Icon(Icons.search),
          tooltip: 'Search',),

          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(snackbarThree);
          }, icon: const Icon(Icons.menu),
          tooltip: 'Navigation Menu',),
        ],
        title: const Text('War Quiz App',
        style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal),
      ),
      backgroundColor: Colors.redAccent),

      //Body
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 25),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.redAccent,
              ),
              
              child: const Icon(Icons.landscape, color: Colors.brown),
            ),

            Container(
              margin: const EdgeInsets.only(top: 70, right: 50),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.green,
              ),
              child: const Icon(Icons.keyboard_arrow_down, color: Colors.black,),
            ),

            Container(
              margin: const EdgeInsets.only(left: 50, top: 70),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blueAccent
              ),
              child: const Icon(Icons.keyboard_arrow_up, color: Colors.black,),

            ),

           const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Take a Quick War Quiz',
            style: TextStyle(fontSize: 35, fontStyle: FontStyle.normal),
          ),

          
        ]
           ),

           Column(
            children: [
              const Text('Answer a few Questions to test your knowledge, Scores will decides..',
              style: TextStyle(fontSize: 25),),

              const Text(
                '...Either...',
                style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic, color: Colors.deepOrangeAccent)
             ),

            ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            child: const Text('You are a War Expert!',
            style: TextStyle(fontSize: 22,
            color: Colors.white)
            ),
            ),
            const Icon(color: Colors.pink,
            Icons.favorite,
            size: 24,),
            const Text('...OR...',
            style: TextStyle(fontSize: 22, color: Colors.deepOrangeAccent, fontStyle: FontStyle.italic),),

            ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            child: const Text('You are a Learned Person!',
            style: TextStyle(fontSize: 22,
            color: Colors.white)
            ),
            ),
            const Icon(color: Colors.green,
            Icons.audiotrack,
            size: 30,),
            const Text('...FINALLY...',
            style: TextStyle(fontSize: 22, color: Colors.deepOrangeAccent, fontStyle: FontStyle.italic),),

            ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            child: const Text('You need to Study More!',
            style: TextStyle(fontSize: 22,
            color: Colors.white)
            ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Padding(padding: const EdgeInsets.all(20),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(30),),
                  child: ElevatedButton(
                    onPressed: (){clickNextPage(context);},
                    style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
                    child: const Text('Let\'s Start...', style: TextStyle(fontSize: 22, color: Colors.white),),
                  ),
                ),))
              ],
            )
            ],
          )

          ],
        ),
        ),
    );
  }

}