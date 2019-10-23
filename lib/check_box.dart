import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {

  bool _selected = false;
  @override
  State<StatefulWidget> createState() {
    return CheckBoxDemoState();
  }
}

class CheckBoxDemoState extends State<CheckBoxDemo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox Demo"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              title: Text("This is title"),
              subtitle: Text("This is sub title"),
              value: widget._selected,
              secondary: Text("aaa"),
              onChanged: (newValue) {
                setState(() {
                  widget._selected = newValue;
                });
              },
            )
          ],
        ),
      )
    );
  }
}
