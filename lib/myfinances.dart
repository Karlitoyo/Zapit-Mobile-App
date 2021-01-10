import 'package:flutter/material.dart';

class MyFinances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Finances(),
    );
  }
}

class Finances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.red[600], Colors.purple[400]])),
      )),
    );
  }
}
