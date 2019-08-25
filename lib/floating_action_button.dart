import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: FloatingActionButtonPage(),
    );
  }
}

class FloatingActionButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          print("hello");
        },
        label: Text("Hello"),
        icon: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}