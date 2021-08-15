import 'package:flutter/material.dart';

class MyDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context),
        child: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person, size: 25),
                title: Text('Ver perfil', style: TextStyle(fontSize: 18)),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 25),
                title: Text('Configuración', style: TextStyle(fontSize: 18)),
                onTap: () => print('configuración'),
              ),
              ListTile(
                leading: Icon(Icons.logout, size: 25, color: Colors.white),
                title: Text('Cerrar sesión', style: TextStyle(fontSize: 18)),
                onTap: () => print('cerrando sesión'),
              ),
            ],
          ),
        ));
  }
}

class EachList extends StatelessWidget {
  final IconData icon;
  final String title;

  EachList(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(20.0),
        // child: new Row(
        //   children: <Widget>[
        //     new Icon(this.icon),
        //     new Padding(padding: EdgeInsets.only(right: 10.0)),
        //     new Text(
        //       title,
        //       style: TextStyle(fontSize: 20.0),
        //     )
        //   ],
        // ),
        //
        // Test
        child: new Row(
          children: <Widget>[
            new IconButton(
                icon: new Icon(this.icon), onPressed: () => print('test')),
            // new Icon(this.icon),
            new Padding(padding: EdgeInsets.only(right: 10.0)),
            new Text(
              title,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
