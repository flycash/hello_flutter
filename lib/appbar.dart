import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.backspace),
        title: Container(
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
            ),
          ),
        ),
        actions: <Widget>[
          Icon(Icons.add),
        ],
        bottom: AppBar(
          title: Text("bottom"),
        ),
      ),
    );
  }
}