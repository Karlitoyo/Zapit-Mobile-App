// import 'package:Zapit_app/cashflow.dart';
import 'package:flutter/material.dart';

import 'base.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/second': (context) => Home(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red[600], Colors.purple[400]],
            ),
          ),
        ),
        title: Text(
          'Zapit',
          style: TextStyle(
            color: Colors.yellow[400],
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red[600], Colors.purple[400]])),
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                shape: StadiumBorder(),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red[600],
                        Colors.purple[400],
                      ],
                    ),
                  ),
                  child: Text(
                    'Welcome To Zapit!\n ⚡',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w200,
                        color: Colors.white),
                  ),
                  padding: EdgeInsets.fromLTRB(46, 46, 46, 46),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
