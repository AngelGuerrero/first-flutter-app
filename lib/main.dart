import 'package:flutter/material.dart';
import 'package:myapp/myAppBar.dart';
import 'package:myapp/myBottomNavigationBar.dart';
import 'package:myapp/myDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio administration',
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.white,
        primarySwatch: Colors.red,

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(title: 'MyFuckingSpace'),
    );
  }
}

class HomeView extends StatefulWidget {
  final String title;

  HomeView({Key key, this.title}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _online = false;

  String _message = 'Welcome master';

  void _toggleOnlineStatus() {
    setState(() => _online = !_online);

    this._setMessage();
  }

  void _setMessage() {
    setState(() {
      _message = this._online ? 'You are online!' : 'Offline';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: MyAppBar(widget.title),
            drawer: MyDrawer(),
            body: TabBarView(children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _message,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.message),
              Icon(Icons.notifications),
            ]),
            floatingActionButton: FloatingActionButton(
              backgroundColor: _online ? Colors.green : Colors.red,
              tooltip: 'Change online status',
              onPressed: _toggleOnlineStatus,
              child: Theme(
                data: Theme.of(context),
                child: const Icon(Icons.online_prediction),
              ),
            ),
            bottomNavigationBar: MyBottomNavigationBar(),
          ),
        ));
  }
}
