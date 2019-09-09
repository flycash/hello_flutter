import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  @override
  State createState() {
    return TabBarState();
  }
}

class TabBarState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin<TabBarDemo> {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar Demo"),
      ),
      body: TabBarView(controller: _controller, children: [
        Center(
          child: Text("I'm home"),
        ),
        Center(
          child: Text("I'm time"),
        )
      ]),
      bottomNavigationBar: TabBar(
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
          controller: _controller, tabs: [
        Tab(
          text: "Home",
          icon: Icon(Icons.home),
        ),
        Tab(
          text: "Time",
          icon: Icon(Icons.history),
        )
      ]),
    );
  }
}
