import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
