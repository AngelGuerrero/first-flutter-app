import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  final Size preferredSize;

  MyAppBar(this.title) : preferredSize = Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: AppBar(
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) => IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(this.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => print('hi on icon action'),
          )
        ],
      ),
    );
  }
}
