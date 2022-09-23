import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text('To-Do App')),
      body: Container(
        child: Text('This is my homepage'),
      ),
    );
  }
}
