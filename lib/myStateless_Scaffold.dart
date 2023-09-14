import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

const SnackBar snackBarOne = SnackBar(
  content: Text(
    'Alert has been pressed!',
    style: TextStyle(fontSize: 30),
  ),
);

const SnackBar snackBarTwo = SnackBar(
  content: Text('Search has been pressed!', style: TextStyle(fontSize: 30)),
);

const SnackBar snackBarThree = SnackBar(
  content: Text('Navigation has been Pressed!', style: TextStyle(fontSize: 30)),
);

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

class MyStatelessScaffoldWidget extends StatelessWidget {
  const MyStatelessScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBarOne);
            },
          ),

          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBarTwo);
            },
          ),

          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: (){clickNextPage(context);},
          ),
        ],

        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(snackBarThree);
          },),

          title: const Text('Knowledge Test',
          style: TextStyle(fontSize: 25.00, fontStyle: FontStyle.normal),),
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
          const Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',

          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            onPressed: null,
            child: const Text(
              'You Have Chosen Answer 2',
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
          ),
          const Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 30.0,
          ),
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(disabledBackgroundColor: Colors.redAccent),
            onPressed: null,
            child: const Text(
              'You Have Chosen Answer 3',
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
          ),
          const Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 36.0
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
