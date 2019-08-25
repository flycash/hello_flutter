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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("hello");
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.red,
        shape: RoundedRectangleBorder(),
        mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(height: 50,),
      ),
    );
  }
}