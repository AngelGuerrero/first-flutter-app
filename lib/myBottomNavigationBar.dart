import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;

  MyBottomNavigationBar() : preferredSize = Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context),
        child: TabBar(
          tabs: [
            Tab(
              icon: const Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: const Icon(Icons.message),
              text: 'Messages',
            ),
            Tab(
              icon: const Icon(Icons.notifications),
              text: 'Notifications',
            ),
          ],
        ));
  }
}
