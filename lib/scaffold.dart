import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.home)
      ),
      body: Text("Hello, I'm Scaffold demo"),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.print),),
            IconButton(icon: Icon(Icons.info),),
            IconButton(icon: Icon(Icons.add),),
            IconButton(icon: Icon(Icons.accessibility),)
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        IconButton(icon: Icon(Icons.print),),
        IconButton(icon: Icon(Icons.info),),
        IconButton(icon: Icon(Icons.add),),
        IconButton(icon: Icon(Icons.accessibility),)
      ],
      backgroundColor: Colors.blue,
    );
  }
}