import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

const SnackBar snackbarOne = SnackBar(content: Text('Alert has been Pressed!',
style: TextStyle(fontSize: 30)));

const SnackBar snackbarTwo = SnackBar(content: Text('Search has been Pressed!',
style: TextStyle(fontSize: 30)));

const SnackBar snackbarThree = SnackBar(content: Text('Navigation has been Pressed!',
style: TextStyle(fontSize: 30)));


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
