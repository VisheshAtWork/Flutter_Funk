import 'package:flutter/material.dart';

class ScrollablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          //makes the screen scrollable
          child: Container(
            height: double.maxFinite,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 1000,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  color: (index % 2 == 0) ? Colors.amber : Colors.indigo,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
