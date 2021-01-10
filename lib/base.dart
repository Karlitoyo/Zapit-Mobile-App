import 'package:Zapit_app/Zaps.dart';
import 'package:Zapit_app/myfinances.dart';
import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';

import 'main.dart';
import 'homepage.dart';
import 'cashflow.dart';
import 'myfinances.dart';
import 'Zaps.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/second': (context) => Home(),
    },
  ));
}

// class Cashflow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CashFlow(),
    Finances(),
    Zaps(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          "Zapit - Home",
          style: TextStyle(
            color: Colors.yellow[400],
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GradientBottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColorStart: Colors.red[600],
        backgroundColorEnd: Colors.purple[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              color: Colors.white,
            ),
            title: Text(
              'Cashflow',
              style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              color: Colors.white,
            ),
            title: Text(
              'MyFinances',
              style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.white,
            ),
            title: Text(
              'Zaps',
              style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),

      // child: Container(
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.centerLeft,
      //           end: Alignment.centerRight,
      //           colors: [Colors.red[600], Colors.purple[400]])),
      //   width: 500,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       MaterialButton(
      //         onPressed: () {
      //           // Navigate back to first route when tapped.
      //           Navigator.pop(context);
      //         },
      //         child: Text(
      //           'Go back!',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //               fontSize: 30.0,
      //               fontWeight: FontWeight.w200,
      //               color: Colors.white),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
