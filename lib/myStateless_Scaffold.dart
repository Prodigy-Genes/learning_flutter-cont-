import 'package:flutter/material.dart';


final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
const SnackBar snackBarOne = SnackBar(content: Text('Alert has been pressed!',
style: TextStyle(fontSize: 30),));

const SnackBar snackBarTwo = SnackBar(content: Text('Search has been pressed!',
style: TextStyle(fontSize: 30)));

const SnackBar snackBarThree = SnackBar(content: Text('Navigation has been Pressed!',
style: TextStyle(fontSize: 30)),);

void clickNextPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Know Yourself'),),
      body: const Center(
        child: Text('Dig deep into every layer of your mind to find yourself',
        style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
        
      ),
    );
  }));
}

class MyStatelessScaffoldWidget extends StatelessWidget {

  MyStatelessScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: (){scaffoldKey.currentState.showSnackBar(snackBarOne);}, 
          )  
        ]),
    );
  }
}