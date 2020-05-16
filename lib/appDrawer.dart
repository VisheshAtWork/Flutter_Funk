import 'package:flutter/material.dart';
import 'package:flutter_funk/scrollablePage.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScrollablePage(),
            ),
          );
        },
        label: Text('Next Page'),
      ),
      drawer: Drawer(
          child: Container(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Center(
                    child: Text(
              'Flutter Funk',
              style: TextStyle(fontSize: 30),
            ))), //images logos and other customizations can also be done
            ListTile(title: Text('Home')),
            ListTile(title: Text('Feed')),
            ListTile(title: Text('Settings')),
            ListTile(title: Text('Need Help?')),
          ],
        ),
      )),
      appBar: AppBar(title: Text('Drawer'), centerTitle: true),
    );
  }
}
