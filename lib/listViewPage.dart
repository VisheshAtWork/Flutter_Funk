import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'appDrawer.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppDrawer(),
            ),
          );
        },
        label: Text('Next Page'),
      ),
      body: ListView.separated(
          //adds space between every Item
          itemBuilder: (context, index) => Container(
              color: Colors.amber,
              child: ListTile(
                title: Text('Title'),
                subtitle: Text('SubTitle'),
                leading: CircleAvatar(child: Text('L')),
              )),
          separatorBuilder: (context, index) => Divider(
                color: Colors.lightGreen,
                thickness: 5,
              ),
          itemCount: 10),
    );
  }
}
